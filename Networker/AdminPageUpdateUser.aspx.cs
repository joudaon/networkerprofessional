using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Networker
{
    public partial class AdminPageUpdateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserToken"].ToString() != "sdfohhgsj345tregdfg4·$35g·$hgkjhsdfkjghls")
                Response.Redirect("~/FrontEndErrorPages/ErrorSession.html");

            ((MasterPage)Page.Master).FindControl("logoff").Visible = true;
            ((MasterPage)Page.Master).FindControl("logoffimage").Visible = true;

            string UserIdCookies = Server.HtmlEncode(Request.Cookies["UserIdCookies"].Value);
            defaultpage.HRef = "Default.aspx?Id=" + UserIdCookies;

            if (!IsPostBack)
                GetUser(Convert.ToInt32(Session["UserIdAdmin"]));
        }

        protected void GetUser(int id)
        {
            DataTable dtData = new DataTable();

            try
            {
                using (SqlConnection conex = new SqlConnection(ConfigurationManager.ConnectionStrings["networkerDB"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("GetUser", conex))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        SqlParameter sqlId = new SqlParameter("@Id", SqlDbType.VarChar);

                        sqlId.Value = id;

                        cmd.Parameters.Add(sqlId);


                        SqlDataAdapter oAdapter = new SqlDataAdapter(cmd);
                        oAdapter.Fill(dtData);

                        if (dtData.Rows.Count == 0)
                            Response.Redirect("~/FrontEndErrorPages/Error404.html");

                        foreach (DataRow row in dtData.Rows)
                        {


                            //HtmlElementCollection
                            var script = "$('#firstname').val('" + row["Name"].ToString() + "'); ";
                            script = script + "$('#lastname').val('" + row["LastName"].ToString() + "'); ";
                            script = script + "$('#telephone').val('" + row["Telephone"].ToString() + "'); ";
                            script = script + "$('#email').val('" + row["Email"].ToString() + "'); ";
                            script = script + "$('#emailpersonal').val('" + row["PersonalEmail"].ToString() + "'); ";
                            script = script + "$('#password').val('" + row["Password"].ToString() + "'); ";
                            script = script + "$('#confirm_password').val('" + row["Password"].ToString() + "'); ";
                            script = script + "$('#linkedinUrl').val('" + row["LinkedinUrl"].ToString() + "'); ";
                            script = script + "$('#twitterUrl').val('" + row["TwitterUrl"].ToString() + "'); ";
                            script = script + "$('#youtubeUrl').val('" + row["YoutubeURL"].ToString() + "'); ";
                            script = script + "$('#skypeUser').val('" + row["SkypeUser"].ToString() + "'); ";
                            script = script + "$('#facebookUrl').val('" + row["FacebookURL"].ToString() + "'); ";
                            script = script + "$('#virtualOffice').val('" + row["VirtualOfficeAsea"].ToString() + "'); ";

                            ClientScript.RegisterStartupScript(typeof(string), "formValues", script, true);

                            lblhello.InnerText = "Hola " + row["Name"].ToString();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("~/FrontEndErrorPages/Error404.html");
            }

        }

        protected void sentUser_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();

            try
            {
                string email = Request.Form["email"].ToString();
                string emailpersonal = Request.Form["emailpersonal"].ToString();
                string telephone = Request.Form["telephone"].ToString();
                string password = Request.Form["password"].ToString();
                string linkedinUrl = Request.Form["linkedinUrl"].ToString();
                string youtubeUrl = Request.Form["youtubeUrl"].ToString();
                string twitterUrl = Request.Form["twitterUrl"].ToString();
                string facebookUrl = Request.Form["facebookUrl"].ToString();
                string skypeUser = Request.Form["skypeUser"].ToString();
                string oficinavirtual = Request.Form["virtualOffice"].ToString();

                using (connection = new SqlConnection(ConfigurationManager.ConnectionStrings["networkerDB"].ConnectionString))
                {
                    using (SqlCommand command = new SqlCommand("UpdateUser", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@Id", SqlDbType.Int)).Value = Convert.ToInt32(Session["UserIdAdmin"]);
                        command.Parameters.Add(new SqlParameter("@Email", SqlDbType.VarChar)).Value = email;
                        command.Parameters.Add(new SqlParameter("@PersonalEmail", SqlDbType.VarChar)).Value = emailpersonal;
                        command.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar)).Value = password;
                        command.Parameters.Add(new SqlParameter("@Telephone", SqlDbType.VarChar)).Value = telephone;
                        command.Parameters.Add(new SqlParameter("@LinkedinUrl", SqlDbType.VarChar)).Value = linkedinUrl;
                        command.Parameters.Add(new SqlParameter("@YouTubeUrl", SqlDbType.VarChar)).Value = youtubeUrl;
                        command.Parameters.Add(new SqlParameter("@TwitterUrl", SqlDbType.VarChar)).Value = twitterUrl;
                        command.Parameters.Add(new SqlParameter("@FacebookUrl", SqlDbType.VarChar)).Value = facebookUrl;
                        command.Parameters.Add(new SqlParameter("@SkypeUser", SqlDbType.VarChar)).Value = skypeUser;
                        command.Parameters.Add(new SqlParameter("@VirtualOfficeAsea", SqlDbType.VarChar)).Value = oficinavirtual;

                        connection.Open();

                        command.ExecuteNonQuery();

                        connection.Close();

                    }
                }
            }
            catch (Exception ex)
            {
                errorMessage.Visible = true;
            }
            finally
            {
                connection.Close();

                GetUser(Convert.ToInt32(Session["UserIdAdmin"]));

                if (errorMessage.Visible == false)
                    successMessage.Visible = true;
            }
        }
    }
}


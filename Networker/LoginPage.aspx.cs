using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Networker
{
    public partial class LoginPage : System.Web.UI.Page
    {
        public int Id { get; set; }
        public string UserName { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            string UserIdCookies = Server.HtmlEncode(Request.Cookies["UserIdCookies"].Value);
            defaultpage.HRef = "Default.aspx?Id=" + UserIdCookies;
        }

        protected void sentLogin_Click(object sender, EventArgs e)
        {

            string email = Request.Form["email"].ToString();
            string password = Request.Form["password"].ToString();

            Session["emaillogin"] = email;

            if (email == "support@networkerprofessional.net" && password == "MarcoJon749#01")
            { 
                Session["UserToken"] = "sdfohhgsj345tregdfg4·$35g·$hgkjhsdfkjghls";
                Response.Redirect("AdminIT.aspx", false);
            }
            else
            {
                if (GetUser(email, password))
                {
                    Session["UserToken"] = "sdfohhgsj345tregdfg4·$35g·$hgkjhsdfkjghls";
                    Response.Redirect("AdminPage.aspx", false);
                }
                else
                    errorMessage.Visible = true;
            }
        }

        protected bool GetUser(string email, string password)
        {
            bool hasUser = false;

            DataTable dtData = new DataTable();

            try
            {
                using (SqlConnection conex = new SqlConnection(ConfigurationManager.ConnectionStrings["networkerDB"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("GetUserId", conex))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        SqlParameter sqlEmail = new SqlParameter("@Email", SqlDbType.VarChar);
                        SqlParameter sqlPassword = new SqlParameter("@Password", SqlDbType.VarChar);

                        sqlEmail.Value = email;
                        sqlPassword.Value = password;

                        cmd.Parameters.Add(sqlEmail);
                        cmd.Parameters.Add(sqlPassword);

                        SqlDataAdapter oAdapter = new SqlDataAdapter(cmd);
                        oAdapter.Fill(dtData);

                        if (dtData.Rows.Count == 0)
                            hasUser = false;
                        else
                            hasUser = true;

                        foreach (DataRow row in dtData.Rows)
                        {
                            Id = Convert.ToInt32(row["Id"]);
                            UserName = row["Name"].ToString() + " " + row["LastName"].ToString();

                            Session["UserIdAdmin"] = Id.ToString();
                            Session["UserNameAdmin"] = UserName;
                        }
                    }
                }
            }
            catch (Exception)
            {
                hasUser = false;
            }

            return hasUser;

        }
    }
}
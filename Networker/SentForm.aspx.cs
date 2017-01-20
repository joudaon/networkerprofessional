using System;
using MailClassesSender;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Networker
{
    public partial class SentForm : System.Web.UI.Page
    {
        public bool issent { get; set; }
        private string UserEmail { get; set; }
        private string UserName { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            string UserIdCookies = Server.HtmlEncode(Request.Cookies["UserIdCookies"].Value);
            defaultpage.HRef = "Default.aspx?Id=" + UserIdCookies;

            GetUser(Convert.ToInt32(UserIdCookies));
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

                        SqlParameter sqlId = new SqlParameter("@Id", SqlDbType.Int);

                        sqlId.Value = id;

                        cmd.Parameters.Add(sqlId);

                        SqlDataAdapter oAdapter = new SqlDataAdapter(cmd);
                        oAdapter.Fill(dtData);

                        if (dtData.Rows.Count == 0)
                            Response.Redirect("~/FrontEndErrorPages/Error404.html");

                        foreach (DataRow row in dtData.Rows)
                        {
                            UserEmail = row["Email"].ToString();
                            UserName = row["Name"].ToString() + " " + row["LastName"].ToString();
                        }
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/FrontEndErrorPages/Error404.html");
            }
        }

        protected void sentMail_Click(object sender, EventArgs e)
        {
            try
            {
                string firstname = Request.Form["firstname"].ToString();
                string lastname = Request.Form["lastname"].ToString();
                string email = Request.Form["email"].ToString();
                string telephone = Request.Form["telephone"].ToString();
                string message = Request.Form["message"].ToString();

                if (firstname == "" || lastname == "" || email == "" || message == "")
                    issent = false;
                else
                {
                    string messageBuild = "El sr. " + firstname + " " + lastname + " con el correo: " + email + ", y con el telefono: " + telephone
                    + " desea la siguiente información de su parte: <br/><br/>" + message;

                    string networkerMail = UserEmail;
                    string user = UserName;

                    MailSender sentMail = new MailSender();
                    issent = sentMail.send(messageBuild, networkerMail, networkerMail, user);
                }
            }
            catch (Exception ex)
            {
                //throw ex;
            }
            finally
            {
                if (issent == false)
                    errorMessage.Visible = true;
                else
                    successMessage.Visible = true;
            }
        }
    }
}
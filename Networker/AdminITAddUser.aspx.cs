using MailClassesSender;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Networker
{
    public partial class AdminITAddUser : System.Web.UI.Page
    {
        public bool issent { get; set; }
        public int Id { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserToken"].ToString() != "sdfohhgsj345tregdfg4·$35g·$hgkjhsdfkjghls")
                Response.Redirect("~/FrontEndErrorPages/ErrorSession.html");

            ((MasterPage)Page.Master).FindControl("logoff").Visible = true;
            ((MasterPage)Page.Master).FindControl("logoffimage").Visible = true;

            string UserIdCookies = Server.HtmlEncode(Request.Cookies["UserIdCookies"].Value);
            defaultpage.HRef = "Default.aspx?Id=" + UserIdCookies;
        }

        protected void sentUser_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();

            try
            {
                string name = Request.Form["firstname"].ToString();
                string lastName = Request.Form["lastname"].ToString();
                string email = Request.Form["email"].ToString();
                string personalEmail = Request.Form["email2"].ToString();
                string password = Request.Form["password"].ToString();
                string telephone = Request.Form["telephone"].ToString();
                string linkedinUrl = Request.Form["linkedinUrl"].ToString();
                string youtubeUrl = Request.Form["youtubeUrl"].ToString();
                string twitterUrl = Request.Form["twitterUrl"].ToString();
                string facebookUrl = Request.Form["facebookUrl"].ToString();
                string skypeUser = Request.Form["skypeUser"].ToString();

                string active = "off";

                if (Request.Form["active"] != null)
                    active = Request.Form["active"].ToString();

                string oficinavirtual = Request.Form["oficinavirtual"].ToString();

                if (active == "on")
                    active = "true";
                else
                    active = "false";

                using (connection = new SqlConnection(ConfigurationManager.ConnectionStrings["networkerDB"].ConnectionString))
                {
                    using (SqlCommand command = new SqlCommand("InsertUser", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.Add(new SqlParameter("@Id", SqlDbType.Int)).Direction = ParameterDirection.Output;
                        command.Parameters.Add(new SqlParameter("@Name", SqlDbType.VarChar)).Value = name;
                        command.Parameters.Add(new SqlParameter("@LastName", SqlDbType.VarChar)).Value = lastName;
                        command.Parameters.Add(new SqlParameter("@Email", SqlDbType.VarChar)).Value = email;
                        command.Parameters.Add(new SqlParameter("@PersonalEmail", SqlDbType.VarChar)).Value = personalEmail;
                        command.Parameters.Add(new SqlParameter("@Telephone", SqlDbType.VarChar)).Value = telephone;
                        command.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar)).Value = password;
                        command.Parameters.Add(new SqlParameter("@LinkedinUrl", SqlDbType.VarChar)).Value = linkedinUrl;
                        command.Parameters.Add(new SqlParameter("@YouTubeUrl", SqlDbType.VarChar)).Value = youtubeUrl;
                        command.Parameters.Add(new SqlParameter("@TwitterUrl", SqlDbType.VarChar)).Value = twitterUrl;
                        command.Parameters.Add(new SqlParameter("@FacebookUrl", SqlDbType.VarChar)).Value = facebookUrl;
                        command.Parameters.Add(new SqlParameter("@SkypeUser", SqlDbType.VarChar)).Value = skypeUser;
                        command.Parameters.Add(new SqlParameter("@Active", SqlDbType.VarChar)).Value = active;
                        command.Parameters.Add(new SqlParameter("@VirtualOfficeAsea", SqlDbType.VarChar)).Value = oficinavirtual;

                        connection.Open();

                        command.ExecuteNonQuery();

                        Id = Convert.ToInt32(command.Parameters["@Id"].Value);

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

                if (errorMessage.Visible == false)
                {
                    successMessage.Visible = true;
                    sentMail(Id);
                }
            }
        }
        protected void sentMail(int id)
        {
            try
            {
                string email = Request.Form["email"].ToString();
                string passmail = Request.Form["passwordmail"].ToString();
                string passarea = Request.Form["password"].ToString();
                string networkerPersonalMail = Request.Form["email2"].ToString();
                string user = Request.Form["firstname"].ToString();
                string Url = "networkerprofessional.net?Id=" + id.ToString();
                string Userid = id.ToString();
                string messageBuild = "";


                MailSender sentMail = new MailSender();
                issent = sentMail.sendMailNewUser(messageBuild, networkerPersonalMail, networkerPersonalMail, user, email, passarea, passmail, Url, Userid);
            }
            catch (Exception ex)
            {
                errorMessage2.Visible = true;
            }
            finally
            {
                if (issent == false)
                    errorMessage2.Visible = true;
                else
                    successMessage2.Visible = true;
            }
        }
    }
}
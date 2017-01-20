using MailClassesSender;
using System;
using System.Web.UI;

namespace Networker
{
    public partial class AdminPageSentMail : System.Web.UI.Page
    {
        public bool issent { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserToken"].ToString() != "sdfohhgsj345tregdfg4·$35g·$hgkjhsdfkjghls")
                Response.Redirect("~/FrontEndErrorPages/ErrorSession.html");

            ((MasterPage)Page.Master).FindControl("logoff").Visible = true;
            ((MasterPage)Page.Master).FindControl("logoffimage").Visible = true;

            string UserIdCookies = Server.HtmlEncode(Request.Cookies["UserIdCookies"].Value);
            defaultpage.HRef = "Default.aspx?Id=" + UserIdCookies;

            //HtmlElementCollection
            var script = "$('#email').val('" + Session["emaillogin"].ToString() + "'); ";

            ClientScript.RegisterStartupScript(typeof(string), "emailvalue", script, true);


            // sentMail.ServerClick += new EventHandler(sentMail_Click);
        }

        protected void sentMail_Click(object sender, EventArgs e)
        {
            try
            {
                string password = Request.Form["password"].ToString(); //password del correo del networker para poder enviar
                string email = Request.Form["email"].ToString(); //email del networker para poder enviar desde su cuenta personal networker
                string message = Request.Form["message"].ToString();
                string mailto = Request.Form["mailto"].ToString();
                string subject = Request.Form["subject"].ToString();
                string name = Request.Form["name"].ToString(); //nombre del destinatario
                string user = Session["UserNameAdmin"].ToString(); //nombre del networker

                MailSender sentMail = new MailSender();
                issent = sentMail.sendPersonalMail(message, mailto, mailto, name, password, email, subject, user);
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
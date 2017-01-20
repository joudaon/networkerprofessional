using MailClassesSender;
using System;
using System.Web.UI;

namespace Networker
{
    public partial class AdminITSentMail : System.Web.UI.Page
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

            // sentMail.ServerClick += new EventHandler(sentMail_Click);
        }

        protected void sentMail_Click(object sender, EventArgs e)
        {
            try
            {
                string networkerMail = Request.Form["mailto"].ToString();

                string messageBuild = "";
                string user = "";

                MailSender sentMail = new MailSender();
                issent = sentMail.sendITmail(messageBuild, networkerMail, networkerMail, user);
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
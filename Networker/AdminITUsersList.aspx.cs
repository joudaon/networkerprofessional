using System;
using System.Web.UI;

namespace Networker
{
    public partial class AdminITUsersList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserToken"].ToString() != "sdfohhgsj345tregdfg4·$35g·$hgkjhsdfkjghls")
                Response.Redirect("~/FrontEndErrorPages/ErrorSession.html");

            ((MasterPage)Page.Master).FindControl("logoff").Visible = true;
            ((MasterPage)Page.Master).FindControl("logoffimage").Visible = true;

            string UserIdCookies = Server.HtmlEncode(Request.Cookies["UserIdCookies"].Value);
            defaultpage.HRef = "Default.aspx?Id=" + UserIdCookies;
        }
    }
}
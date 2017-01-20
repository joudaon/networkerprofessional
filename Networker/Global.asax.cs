using System;
using System.Web;

namespace Networker
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            bool notFoundError = false;
            bool serverError = false;
            bool accessError = false;
            bool badRequestError = false;
            bool unauthorizesError = false;
            Exception ex = null;

            try
            {
                ex = Server.GetLastError();

                if (ex is HttpException)
                {
                    HttpException httpEx = (HttpException)ex;

                    if (httpEx.GetHttpCode() == 400) //Bad Request (request from client to server malformed)
                        badRequestError = true;

                    if (httpEx.GetHttpCode() == 401) //Unauthorized (Log in failed)
                        unauthorizesError = true;

                    if (httpEx.GetHttpCode() == 403) //access error (Forbidden)
                        accessError = true;

                    if (httpEx.GetHttpCode() == 404) //Page not found
                        notFoundError = true;

                    if (httpEx.GetHttpCode() == 500) //server error (Internal Server Error)
                        serverError = true;

        
                }
            }
            catch (Exception exc)
            {
            }
            finally
            {
                // Tell system that the error is being handled.
                Server.ClearError();

                if (notFoundError)
                    Response.Redirect("~/FrontEndErrorPages/Error404.html", false);
                else if (serverError)
                    Response.Redirect("~/FrontEndErrorPages/Error500.html", false);
                else if (accessError)
                    Response.Redirect("~/FrontEndErrorPages/Error403.html", false);
                else if (badRequestError)
                    Response.Redirect("~/FrontEndErrorPages/Error400.html", false);
                else if (unauthorizesError)
                    Response.Redirect("~/FrontEndErrorPages/Error401.html", false);
                else
                    Response.Redirect("~/FrontEndErrorPages/Error404.html", false);
            }
        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}
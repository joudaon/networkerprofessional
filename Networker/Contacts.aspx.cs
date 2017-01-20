using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Networker
{
    public partial class Contacts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string UserIdCookies = Server.HtmlEncode(Request.Cookies["UserIdCookies"].Value);
            defaultpage.HRef = "Default.aspx?Id=" + UserIdCookies;

            GetUser(Convert.ToInt32(UserIdCookies));

            if (youtubeURL.HRef == "http://" + "")
                youtubeURL.Visible = false;
            if (linkedinURL.HRef == "http://" + "")
                linkedinURL.Visible = false;
            if (twitterURL.HRef == "http://" + "")
                twitterURL.Visible = false;
            if (facebookURL.HRef == "http://" + "")
                facebookURL.Visible = false;
            if (skypeUser.HRef == "skype:" + "" + "?call")
                skypeVisible.Visible = false;

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
                            youtubeURL.HRef = "http://" + row["YouTubeURL"].ToString();
                            twitterURL.HRef = "http://" + row["TwitterURL"].ToString();
                            facebookURL.HRef = "http://" + row["FacebookURL"].ToString();
                            skypeUser.HRef = "skype:" + row["SkypeUser"].ToString() + "?call";
                            telephone.HRef = "tel:" + row["Telephone"].ToString();
                            telephone.InnerText = row["Telephone"].ToString();
                            emailsent.HRef = "mailto:" + row["Email"].ToString();
                            emailsent.InnerText = row["Email"].ToString();
                            linkedinURL.HRef = "http://" + row["LinkedinURL"].ToString();
                            skypeUser.InnerText = row["SkypeUser"].ToString();
                            contactname.InnerText = row["Name"].ToString() + " " + row["LastName"].ToString();
                        }
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/FrontEndErrorPages/Error404.html");
            }

        }
    }
}
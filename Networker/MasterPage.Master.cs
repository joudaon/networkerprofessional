using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.HtmlControls;

namespace Networker
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        public string UserName { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            string UserIdCookies = Server.HtmlEncode(Request.Cookies["UserIdCookies"].Value);

            logoff.HRef = "Default.aspx?Id=" + UserIdCookies;

            GetUser(Convert.ToInt32(UserIdCookies));

            if (facebookURLMobile.HRef == "http://" + "")
                facebookURLMobileVisible.Visible = false;
            if (skypeUserMobile.HRef == "skype:" + "" + "?call")
                skypeUserMobileVisible.Visible = false;
            if (youtubeURL.HRef == "http://" + "")
                youtubeVisible.Visible = false;
            if (linkedinURL.HRef == "http://" + "")
                linkedinVisible.Visible = false;
            if (twitterURL.HRef == "http://" + "")
                twitterVisible.Visible = false;
            if (facebookURL.HRef == "http://" + "")
                facebookVisible.Visible = false;
            if (skypeUser.HRef == "skype:" + "" + "?call")
                skypeVisible.Visible = false;

            //We change the meta data so the page has his own attributes
            List<HtmlMeta> metas = new List<HtmlMeta>();
            foreach (Control c in this.Page.Header.Controls)
                if (c.GetType() == typeof(HtmlMeta))
                {
                    HtmlMeta meta = (HtmlMeta)c;
                    if (meta.Name == "appurl")
                        meta.Content = "http://www.networkerprofessional.net/Default.aspx?id=" + UserIdCookies;
                    if (meta.Name == "apptitle")
                        meta.Content = "NetWorker Professional";
                    if (meta.Name == "appdescription")
                        meta.Content = "Tarjeta Virtual de " + UserName;
                    if (meta.Name == "appimage")
                        meta.Content = "http://networkerprofessional.net/pictures/profilepic/" + UserIdCookies + ".jpg";
                }

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

                            facebookURLMobile.HRef = "http://" + row["FacebookURL"].ToString();
                            skypeUserMobile.HRef = "skype:" + row["SkypeUser"].ToString() + "?chat";
                            telephoneMobile.HRef = "tel:" + row["Telephone"].ToString();
                            youtubeURL.HRef = "http://" + row["YouTubeURL"].ToString();
                            twitterURL.HRef = "http://" + row["TwitterURL"].ToString();
                            facebookURL.HRef = "http://" + row["FacebookURL"].ToString();
                            skypeUser.HRef = "skype:" + row["SkypeUser"].ToString() + "?call";
                            telephone.HRef = "tel:" + row["Telephone"].ToString();
                            linkedinURL.HRef = "http://" + row["LinkedinURL"].ToString();
                            oficinavirtual.HRef = "http://" + row["VirtualOfficeAsea"].ToString();
                            UserName = row["Name"].ToString() + " " + row["LastName"].ToString();
                            //((MasterPage)Page.Master).LinkedinURLMobile = "http://" + row["LinkedinURL"].ToString();
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
using System;
using System.Collections.Generic;
using System.Net;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace Networker
{
    public partial class MultimediaGalleryPhotos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string UserIdCookies = Server.HtmlEncode(Request.Cookies["UserIdCookies"].Value);
            defaultpage.HRef = "Default.aspx?Id=" + UserIdCookies;

            photoGallery.Visible = false;
            pnlPhotoalbums.Visible = true;

            GetAlbuns();
        }

        private List<string> GetFileNames(string inputString)
        {
            List<string> namelist = new List<string>();

            Match m;
            string HRefPattern = "href\\s*=\\s*(?:[\"'](?<1>[^\"']*)[\"']|(?<1>\\S+))";

            try
            {
                m = Regex.Match(inputString, HRefPattern,
                                RegexOptions.IgnoreCase | RegexOptions.Compiled,
                                TimeSpan.FromSeconds(1));
                while (m.Success)
                {
                    m = m.NextMatch();
                    namelist.Add(m.Groups[1].ToString());
                }
            }
            catch (RegexMatchTimeoutException e)
            {
                throw e;
            }

            return namelist;
        }

        private void GetAlbuns()
        {
            string htmlContent = string.Empty;
            string photoURL = string.Empty;

            //The list of files in the directory comes as HTML <a> so we need to get the href value to get the file name.
            string baseURL = "http://networkerprofessional.net/photogallery/";
            WebClient client = new WebClient();
            string HTMLcontent = client.DownloadString(baseURL);

            List<string> namelist = GetFileNames(HTMLcontent);

            namelist.Remove("/photogallery/web.config");
            namelist.Remove("");


            foreach (string strFileName in namelist)
            {
                ImageButton img = new ImageButton();
                img.ImageUrl = "/images/logos/networker-logo-big.png";
                img.AlternateText = strFileName;
                img.Width = Unit.Pixel(100);
                img.Height = Unit.Pixel(100);
                img.Style.Add("padding", "5px");
                img.BorderStyle = BorderStyle.Solid;
                img.BorderWidth = 5;
                img.BorderColor = System.Drawing.Color.Gray;
                img.Click += new ImageClickEventHandler(imageButton_Click);
                img.CssClass = "img-circle img-responsive";

                Label lbl = new Label();
                lbl.Text = "ASEA - Alemania";

                pnlPhotoalbums.Controls.Add(img);
                pnlPhotoalbums.Controls.Add(lbl);
            }
        }

        void imageButton_Click(object sender, ImageClickEventArgs e)
        {
            photoGallery.Visible = true;
            pnlPhotoalbums.Visible = false;

            string strAlbumName = ((ImageButton)sender).AlternateText;

            GetPhotos(strAlbumName);
        }

        private void GetPhotos(string strAlbumName)
        {
            string htmlContent = string.Empty;
            string photoURL = string.Empty;

            //The list of files in the directory comes as HTML <a> so we need to get the href value to get the file name.
            string baseURL = "http://networkerprofessional.net" + strAlbumName;
            WebClient client = new WebClient();
            string HTMLcontent = client.DownloadString(baseURL);

            List<string> namelist = GetFileNames(HTMLcontent);

            namelist.Remove("");

            foreach (string strFileName in namelist)
            {

                photoURL = "http://networkerprofessional.net" + strFileName;

                htmlContent = htmlContent + string.Format(" <a href='{0}' data-lightbox='galeria'> <img src='{0}' class='img-thumbnail' /></a> ", photoURL);
            }

            photoGallery.InnerHtml = htmlContent;
        }
    }
}
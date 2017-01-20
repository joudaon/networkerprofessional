using System;
using System.Net.Mail;
using System.Net.Mime;
using System.IO;
using System.Net;

namespace MailClassesSender
{
    public class Sender
    {
        public string Name { get; set; }
        public string To { get; set; }
        public string From { get; set; }
        public string BBC { get; set; }
        public string Subject { get; set; }
        public string plainText { get; set; }
        public string htmlText { get; set; }
        public System.Drawing.Bitmap NetWorkerLogo { get; set; }
        public System.Drawing.Bitmap Header { get; set; }
        public string password { get; set; }
        public string networkerurl { get; set; }
        public string email { get; set; }
        public string passwordarea { get; set; }
        public string passwordmail { get; set; }
        public string username { get; set; }
        public string Host { get; set; }
        public string Userid { get; set; }


        public StreamWriter sw { get; set; }

        private MailMessage Message()
        {
            MailMessage message = new MailMessage();
            message.From = new MailAddress(From);
            message.To.Add(To);
            message.Bcc.Add(BBC);

            message.Subject = Subject;

            htmlText = htmlText.Replace("[NOMBRE]", Name);
            htmlText = htmlText.Replace("[BODYTEXT]", plainText);
            htmlText = htmlText.Replace("[NETWORKERURL]", networkerurl);
            htmlText = htmlText.Replace("[EMAIL]", email);
            htmlText = htmlText.Replace("[PASSWORDAREA]", passwordarea);
            htmlText = htmlText.Replace("[PASSWORDEMAIL]", passwordmail);
            htmlText = htmlText.Replace("[NAMENETWORKER]", username);
            htmlText = htmlText.Replace("[USERID]", Userid);

            AlternateView plainView = AlternateView.CreateAlternateViewFromString(plainText, null, "text/plain");
            AlternateView htmlView = AlternateView.CreateAlternateViewFromString(htmlText, null, "text/html");

            //Creamos las imagenes para el correo (el cid (podemos verlo de Resources.resx en el campo MailBody) 
            //tiene de tener el mismo valor que el ContentID)

            //Header
            MemoryStream msHeader = new MemoryStream();
            Header.Save(msHeader, System.Drawing.Imaging.ImageFormat.Jpeg);
            msHeader.Position = 0;
            LinkedResource lrHeader = new LinkedResource(msHeader, new ContentType("image/jpeg"));
            lrHeader.ContentId = "Header";

            //Logo Networker
            MemoryStream msNetworkerLogo = new MemoryStream();
            NetWorkerLogo.Save(msNetworkerLogo, System.Drawing.Imaging.ImageFormat.Png);
            msNetworkerLogo.Position = 0;
            LinkedResource lrNetworkerLogo = new LinkedResource(msNetworkerLogo, new ContentType("image/png"));
            lrNetworkerLogo.ContentId = "NetWorkerLogo";

            htmlView.LinkedResources.Add(lrNetworkerLogo);
            htmlView.LinkedResources.Add(lrHeader);

            message.AlternateViews.Add(plainView);
            message.AlternateViews.Add(htmlView);

            return message;
        }

        public bool send()
        {
            bool isSend = false;

            var client = new SmtpClient
            {
                Host = Host,
                Port = 26,
                EnableSsl = false,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(From, password)
            };

            try
            {
                client.Send(Message());

                isSend = true;
            }
            catch (Exception ex1)
            {
                throw ex1;
            }

            return isSend;
        }
    }
}

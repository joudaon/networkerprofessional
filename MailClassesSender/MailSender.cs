using MailClassesSender.Properties;

namespace MailClassesSender
{
    public class MailSender : CompanySender
    {
        public override bool send(string text, string to, string bbc, string name)
        {
            Sender sender = new Sender()
            {
                To = to,
                From = Resources.NetWorkerGlobalMailFrom,
                BBC = bbc,
                Subject = Resources.NetWorkerGlobalMailSubject,
                Name = name,
                plainText = text,
                htmlText = Resources.NetWorkerGlobalMailBody, //Plantilla HTML de correo
                Header = Resources.Header, //Header - Imagen
                NetWorkerLogo = Resources.NetWorkerLogo, //Logo NetWOrker Profesional - Imagen
                password = Resources.NetWorkerGlobalMailPassword, //Password para enviar los correos desde global@networkerprofessional.net
                Host = Resources.NetWorkerMailHost //Host de NetWorker Profesional    

            };

            bool issent = sender.send();

            return issent;
        }

        //Para enviar correo de nueva cuenta networker - pedido de los datos del usuario
        public override bool sendITmail(string text, string to, string bbc, string name)
        {
            {
                Sender sender = new Sender()
                {
                    To = to,
                    From = Resources.NetWorkerSupportMailFrom,
                    BBC = "global@networkerprofessional.net",
                    Subject = Resources.NetWorkerSupportMailSubject,
                    Name = name,
                    plainText = text,
                    htmlText = Resources.NetWorkerSupportMailBody,
                    Header = Resources.Header,
                    NetWorkerLogo = Resources.NetWorkerLogo,
                    password = Resources.NetWorkerSupportMailPassword, //Password para enviar los correos desde support@networkerprofessional.net
                    Host = Resources.NetWorkerMailHost

                };

                bool issent = sender.send();

                return issent;
            }
        }

        //Para enviar correo al usuario con sus nuevos datos 
        public override bool sendMailNewUser(string text, string to, string bbc, string name, string email, string passarea, string passemail, string networkerurl, string Userid)
        {
            {
                Sender sender = new Sender()
                {
                    To = to,
                    From = Resources.NetWorkerSupportMailFrom,
                    BBC = "global@networkerprofessional.net",
                    Subject = Resources.NetWorkerNewUserMailSubject,
                    Name = name,
                    plainText = text,
                    htmlText = Resources.NetWorkerNewUserMailBody,
                    Header = Resources.Header,
                    NetWorkerLogo = Resources.NetWorkerLogo,
                    password = Resources.NetWorkerSupportMailPassword, //Password para enviar los correos desde support@networkerprofessional.net
                    Host = Resources.NetWorkerMailHost,
                    passwordarea = passarea,
                    passwordmail = passemail,
                    networkerurl = networkerurl,
                    email = email,
                    Userid = Userid

                };

                bool issent = sender.send();

                return issent;
            }
        }

        //Para el usuario envie un correo personal
        public override bool sendPersonalMail(string text, string to, string bbc, string name, string password, string networkeremail, string subject, string username)
        {
            {
                Sender sender = new Sender()
                {
                    To = to, //el que recibe
                    From = networkeremail, //correo personal del networker (cuenta networker solo)
                    BBC = bbc,
                    Subject = subject,
                    Name = name, //nombre del destinatario
                    plainText = text,
                    htmlText = Resources.NetWorkerPersonalMailBody,
                    Header = Resources.Header,
                    NetWorkerLogo = Resources.NetWorkerLogo,
                    password = password,
                    Host = Resources.NetWorkerMailHost,
                    username = username //nombre de networker que envia el correo

                };

                bool issent = sender.send();

                return issent;
            }
        }
    }
}

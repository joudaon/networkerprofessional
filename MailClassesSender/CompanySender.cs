using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace MailClassesSender
{
    public abstract class CompanySender
    {
        public StreamWriter sw;

        public abstract bool send(string text, string to, string bbc, string name);

        public abstract bool sendITmail(string text, string to, string bbc, string name);

        public abstract bool sendMailNewUser(string text, string to, string bbc, string name, string email, string passarea, string passemail, string networkerurl, string Userid);

        public abstract bool sendPersonalMail(string text, string to, string bbc, string name, string password, string networkeremail, string subject, string username);

    }
}

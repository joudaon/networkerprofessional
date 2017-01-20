﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Networker
{
    public partial class MultimediaGallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string UserIdCookies = Server.HtmlEncode(Request.Cookies["UserIdCookies"].Value);
            defaultpage.HRef = "Default.aspx?Id=" + UserIdCookies;
        }
    }
}
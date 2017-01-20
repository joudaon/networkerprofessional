using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;

namespace Networker
{
    public partial class Default : System.Web.UI.Page
    {

        public int id { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserToken"] = "";

            if (string.IsNullOrEmpty(Request.QueryString["id"]))
                Response.Redirect("~/FrontEndErrorPages/Error404.html");
            else
                id = Convert.ToInt32(Request.QueryString["id"]);

            GetUser(id);
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
                            CustumerName.InnerText = row["Name"].ToString() + " " + row["LastName"].ToString();

                            imgFoto.Src = "http://networkerprofessional.net/pictures/profilepic/" + id.ToString() + ".jpg";

                            HttpCookie UserIdCookies = new HttpCookie("UserIdCookies");
                            UserIdCookies.Value = id.ToString();
                            UserIdCookies.Expires = DateTime.Now.AddDays(1);
                            Response.Cookies.Add(UserIdCookies);
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
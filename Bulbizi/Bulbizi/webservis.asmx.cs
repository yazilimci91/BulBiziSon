using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Bulbizi
{
    /// <summary>
    /// Summary description for webservis
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class webservis : System.Web.Services.WebService
    {

      [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

           [WebMethod]
        private string GetData()
        {
           
            string query = "select * from Locations";
            string conString = ConfigurationManager.ConnectionStrings["findmeConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand(query);
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;

                    sda.SelectCommand = cmd;
                     
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        return ""+dt;
                    }
                }
            }
        }

    }
}

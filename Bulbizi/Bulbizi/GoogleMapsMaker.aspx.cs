using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Bulbizi
{
    public partial class GooglemMapsMaker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //string dt = this.GetData("select * from Locations");
                //rptMarkers.DataSource = dt;
                //rptMarkers.DataBind();
            }
        }


      
 



    }



}
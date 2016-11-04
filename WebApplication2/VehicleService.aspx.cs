using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class VehicleService : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["rpt"] = "SpecificService";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count > 0)
            {
                string emp = GridView1.Rows[GridView1.SelectedIndex].Cells[0].Text;
                Session["rvar"] = emp;
                Response.Redirect("reportView.aspx");
            }
        }
    }
}
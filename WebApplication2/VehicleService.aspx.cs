using System;

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
            if (DetailsView1.DataItemCount > 0)
            {
                string emp = DetailsView1.DataKey.ToString();
                Session["rvar"] = emp;
                Response.Redirect("SpecificServicerpt.aspx");
            }
        }
    }
}
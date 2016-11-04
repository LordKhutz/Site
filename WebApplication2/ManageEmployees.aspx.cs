using System;
using System.Web.UI;

namespace WebApplication2
{
    public partial class ManageEmployees : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["rpt"] = "TimeSheet";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string emp = GridView1.DataKeys[GridView1.SelectedIndex].Values[1].ToString();
            Session["rvar"] = emp;
            Response.Redirect("reportView.aspx");
        }
    }
}
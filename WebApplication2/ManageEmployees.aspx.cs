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
            string emp = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
            Session["rvar"] = emp;
            Response.Redirect("reportView.aspx");
        }
    }
}
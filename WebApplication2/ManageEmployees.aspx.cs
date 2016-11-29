using System;
using System.Web.UI;

namespace WebApplication2
{
    public partial class ManageEmployees : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (Session["userType"].ToString() != "Timesheet manager")
            {
                Response.Redirect("Login.aspx");
            }
           else
                Session["rpt"] = "TimeSheet";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count > 0 && GridView1.SelectedIndex >= 0)
            {
                string emp = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
                Session["rvar"] = emp;
                Response.Redirect("TimeSheetrpt.aspx");
            }
        }
    }
}
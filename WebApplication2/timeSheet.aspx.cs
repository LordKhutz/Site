using System;
using System.Web.UI;
using LibSite;

namespace WebApplication2
{
    public partial class timeSheet : Page
    {
        clsDB newCLocking = new clsDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            newCLocking.connDB(Session["db"].ToString());
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            newCLocking.Query = "INSERT INTO timeSheet (EmployeeID, hoursWorked, sheetDate) VALUES (" + cbxEmpID.SelectedItem + ", " + txtWorkedHours.Text + ", " + dtDate.Text + ");";
            if (newCLocking.db_non_returning_query() == 1)
            {

            }
        }
    }
}
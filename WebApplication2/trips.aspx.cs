using System;
using LibSite;
using System.Data.OleDb;

namespace WebApplication2
{
    public partial class trips : System.Web.UI.Page
    {
        clsDB newCon = new clsDB();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void newTrip_Click(object sender, EventArgs e)
        {
            newCon.connDB(Session["db"].ToString());
            newCon.Query = "INSERT INTO Trip (tripOrigin, tripDestination, VehicleID, MilageBeforeTrip,fuelUsageEstimate, driverID, tripStartDate, tripEndDate, tripStatus) " +
                "VALUES (" + txtOrigin.Text + ", " + txtDest.Text + ", " + cbxVehicle.SelectedItem + ", " + txtMilageBefore.Text + ", " + txtFuel.Text + ", " + cbxDriver.SelectedItem + ", "
                + dtStart.Text + ", " + dtEnd.Text + ", " + cbxTripStatus.SelectedItem + ");";
            if (newCon.db_non_returning_query() == 1)
            {

            }
        }
    }
}
using System;
using System.Web.UI;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnVehicleInfo_Click(object sender, EventArgs e)
    {
        Session["rpt"] = "VehicleInfo";
        Response.Redirect("~/reportView.aspx");
    }

    protected void btnCompleteService_Click(object sender, EventArgs e)
    {
        Session["rpt"] = "CompleteService";
        Response.Redirect("~/reportView.aspx");
    }

    protected void CompleteTrips_Click(object sender, EventArgs e)
    {
        Session["rpt"] = "CompleteTrips";
        Response.Redirect("~/reportView.aspx");
    }

    protected void btnPlannedService_Click(object sender, EventArgs e)
    {
        Session["rpt"] = "PlannedService";
        Response.Redirect("~/reportView.aspx");
    }

    protected void btnPlannedTrips_Click(object sender, EventArgs e)
    {
        Session["rpt"] = "PlannedTrips";
        Response.Redirect("~/reportView.aspx");
    }

    protected void btnService_Click(object sender, EventArgs e)
    {
        Session["rpt"] = "Service";
        Response.Redirect("~/reportView.aspx");
    }
}
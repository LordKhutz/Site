using Microsoft.Reporting.WebForms;
using System;
using System.Web.UI;

namespace WebApplication2
{
    public partial class reportView : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (isPostBack)
            {
                if (Session["rpt"].ToString() == "TimeSheet")
                {
                    FleetDBDataSet myData = new FleetDBDataSet();
                    ReportViewer7.LocalReport.DataSources.Add(new ReportDataSource("DataSet3", myData.Tables["CompanyInfo"]));
                    ReportViewer7.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", myData.Tables["TimeSheet"]));
                    ReportViewer7.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", myData.Tables["Employees"]));

                    ReportParameterCollection reportParameters = new ReportParameterCollection();
                    reportParameters.Add(new ReportParameter("param1", Session["rvar"].ToString()));
                    ReportViewer7.LocalReport.SetParameters(reportParameters);
                }
                ///report currently not accessible due to missing webpage.
                if (Session["rpt"].ToString() == "SpecificService")
                {
                    FleetDBDataSet myData = new FleetDBDataSet();
                    ReportViewer7.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", myData.Tables["CompanyInfo"]));
                    ReportViewer7.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", myData.Tables["VehicleService"]));
                    ReportParameterCollection reportParameters = new ReportParameterCollection();
                    reportParameters.Add(new ReportParameter("param1", Session["rvar"].ToString()));
                    ReportViewer6.LocalReport.SetParameters(reportParameters);
                }
            }
        }
    }
}

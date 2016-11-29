using System;
using System.Web;
using System.Web.UI;

namespace WebApplication2
{

	public partial class SpecificServicerpt : System.Web.UI.Page
	{

		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack)
			{
				FleetDBDataSet myData = new FleetDBDataSet();
				ReportViewer6.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", myData.Tables["CompanyInfo"]));
				ReportViewer6.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", myData.Tables["VehicleService"]));
				ReportParameterCollection reportParameters = new ReportParameterCollection();
				reportParameters.Add(new ReportParameter("param1", Session["rvar"].ToString()));
				ReportViewer6.LocalReport.SetParameters(reportParameters);
			}
		}
	}
}

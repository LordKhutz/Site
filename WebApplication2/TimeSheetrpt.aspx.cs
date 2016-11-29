using System;
using System.Web;
using System.Web.UI;

namespace WebApplication2
{

	public partial class TimeSheetrpt : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack)
			{
				FleetDBDataSet myData = new FleetDBDataSet();
				ReportViewer7.LocalReport.DataSources.Add(new ReportDataSource("DataSet3", myData.Tables["CompanyInfo"]));
				ReportViewer7.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", myData.Tables["TimeSheet"]));
				ReportViewer7.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", myData.Tables["Employees"]));
				ReportParameterCollection reportParameters = new ReportParameterCollection();
				reportParameters.Add(new ReportParameter("param1", Session["rvar"].ToString()));
				ReportViewer7.LocalReport.SetParameters(reportParameters);
			}

		}
	}
}

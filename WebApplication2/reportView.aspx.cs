﻿using Microsoft.Reporting.WebForms;
using System;
using System.Web.UI;

namespace WebApplication2
{
    public partial class reportView : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rpt"].ToString() == "TimeSheet")
            {
                FleetDBDataSet myData = new FleetDBDataSet();
                ReportViewer7.LocalReport.DataSources.Add(new ReportDataSource("FleetDBDataSet", myData));
                ///ReportViewer7.ReportRefresh();

                ReportParameterCollection reportParameters = new ReportParameterCollection();
                reportParameters.Add(new ReportParameter("param1", Session["rvar"].ToString()));
                ReportViewer7.LocalReport.SetParameters(reportParameters);
            }
            if (Session["rpt"].ToString() == "SpecificService")
            {
                ReportParameterCollection reportParameters = new ReportParameterCollection();
                reportParameters.Add(new ReportParameter("param1", Session["rvar"].ToString()));
                ReportViewer6.LocalReport.SetParameters(reportParameters);
            }
        }
    }
}
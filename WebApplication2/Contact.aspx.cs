using LibSite;
using System;
using System.Data;
using System.Web.UI;

namespace WebApplication2
{
    public partial class Contact : Page
    {
        clsDB getComanyInfo = new clsDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable myInfo = new DataTable();
            getComanyInfo.connDB("|DataDirectory|/FleetDB.mdb");
            getComanyInfo.Query = "SELECT * FROM CompanyInfo;";
            myInfo = getComanyInfo.db_select();
            Session["Addr"] = myInfo.Rows[0].ItemArray[2].ToString();
            lblAddr.Text = Session["Addr"].ToString().Replace(";", "<br />");
        }
    }
}
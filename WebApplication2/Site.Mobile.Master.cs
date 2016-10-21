using LibSite;
using System;
using System.Data;
using System.Web;
using System.Web.UI;

namespace WebApplication2
{
    public partial class Site_Mobile : MasterPage
    {
        clsDB getComanyInfo = new clsDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable myInfo = new DataTable();
            getComanyInfo.connDB("C:/Users/khuth/OneDrive/Documents/FleetDB.mdb");
            getComanyInfo.Query = "SELECT * FROM CompanyInfo;";
            myInfo = getComanyInfo.db_select();
            Session["AppName"] = myInfo.Rows[0].ItemArray[0];
            Session["Tel"] = myInfo.Rows[0].ItemArray[1];
            Session["Addr"] = myInfo.Rows[0].ItemArray[2].ToString();
            Session["mailto"] = myInfo.Rows[0].ItemArray[3];

            if (Session["Email"] == null)
            {
                Session["lastPage"] = HttpContext.Current.Request.Url.AbsoluteUri;
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}
using System;
using System.Web;
using System.Web.UI;
using LibSite;
using System.Data;

namespace WebApplication2
{
    public partial class SiteMaster : MasterPage
    {
        clsDB getComanyInfo = new clsDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable myInfo = new DataTable();
            int idx;
            getComanyInfo.connDB("|DataDirectory|/FleetDB.mdb");
            getComanyInfo.Query = "SELECT * FROM CompanyInfo;";
            myInfo = getComanyInfo.db_select();
            Session["AppName"] = myInfo.Rows[0].ItemArray[0];
            Session["Tel"] = myInfo.Rows[0].ItemArray[1];
            Session["Addr"] = myInfo.Rows[0].ItemArray[2].ToString();
            Session["mailto"] = myInfo.Rows[0].ItemArray[3];
            idx = HttpContext.Current.Request.Url.AbsoluteUri.IndexOf("Login");
            if (Session["Email"] == null && idx < 1)
            {
                Session["lastPage"] = HttpContext.Current.Request.Url.AbsoluteUri;
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}
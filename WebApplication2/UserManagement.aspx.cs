using System;
using System.Web.UI;

namespace WebApplication2
{
    public partial class _Default : Page
    {
        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userType"] != null && string.Compare(Session["userType"].ToString(), "office Manager") == 0)
            {
                Session["lastPage"] = Page.GetType().Name.ToString();
                MsgBox("Please Sign in using an Office Manager Account!", Page, this);
                Response.Redirect("~/Login.aspx");
            }
        }

    }
}
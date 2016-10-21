using System;
using LibSite;
using System.Web.UI;

namespace WebApplication2
{
    public partial class WebForm1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void MsgBox(string ex, Page pg, object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            clsUserManagement changePass = new clsUserManagement();
            changePass.userName = Session["Email"].ToString();
            changePass.connDB("|DataDirectory|/FleetDB.mdb");
           if (changePass.changePassKey(txtPassCode.Text))
            {
                MsgBox("Change Successful",Page, this);
            }
           else
            {
                MsgBox("Operation Failed,\nPlease contact the system administrator.",Page, this);
            }
        }
    }
}
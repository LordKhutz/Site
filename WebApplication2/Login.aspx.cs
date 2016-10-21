using System;
using LibSite;
using System.Net.Mail;
using System.Web.UI;

namespace WebApplication2
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session["Email"] = "";
        }
        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }
        private bool isValid()
        {
            if (txtPassCode.Text.Length < 6)
            {
                txtPassCode.Text = "";
                txtPassCode.Focus();
                return (false);
            }
            try
            {
                var test = new MailAddress(txtEmail.Text);
            }
            catch
            {
                txtEmail.Text = "";
                txtEmail.Focus();
                return (false);
            }


            return (true);
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (isValid())
            {
                clsUserManagement newSignIn = new clsUserManagement();
                newSignIn.connDB("|DataDirectory|/FleetDB.mdb");
                if (newSignIn.Login(txtEmail.Text,txtPassCode.Text))
                {
                    Session["Email"] = txtEmail.Text;
                    newSignIn.Query = "SELECT empName, surname, userType FROM managers WHERE userName = '" + txtEmail.Text + "';";
                    Session["userType"] = newSignIn.userType;
                    Session["user"] = newSignIn.surname + ", " + newSignIn.name;
                    if (Session["lastPage"] != null)
                    {
                        Response.Redirect(Session["lastPage"].ToString());
                    }
                    else
                    {
                        Response.Redirect("~/");
                    }
                    MsgBox("Login Successfull!", Page, this);
                }
                else
                {
                    MsgBox("Login Failed!,\nPlease try again.", Page, this);
                    txtEmail.Text = "";
                    txtEmail.Focus();
                    txtPassCode.Text = "";
                }
            }
        }
    }
}
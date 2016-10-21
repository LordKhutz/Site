using LibSite;
using System;
using System.Linq;
using System.Net.Mail;
using System.Web.UI;

namespace WebApplication2
{
    public partial class addManger : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userType"] != null && string.Compare(Session["userType"].ToString(),"office Manager") == 0)
            {
                Session["lastPage"] = Page.GetType().Name.ToString();
                MsgBox("Please Sign in using an Office Manager Account!", Page, this);
                Response.Redirect("~/Login.aspx");
            }
        }
        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            clsUserManagement newManager = new clsUserManagement();
            if (isValid())
            {
                try
                {

                    newManager.connDB("|DataDirectory|/FleetDB.mdb");
                    if (newManager.addUser(txtEmail.Text, "Password1", cbxPosition.SelectedItem.Text, txtName.Text, txtSurname.Text, txtAddress.Text, txtPhoneN.Text))
                    {
                        MsgBox("Employee Added!", Page, this);
                    }
                    else
                    {
                        MsgBox("Operation Failed", Page, this);
                    }
                    Response.Redirect("~/UserManagement.aspx");
                }
                catch (Exception ex)
                {
                    MsgBox(ex.Message, Page, this);
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            cbxPosition.Text = "";
            txtName.Text = "";
            txtName.Focus();
            txtSurname.Text = "";
            txtAddress.Text = "";
            txtEmail.Text = "";
            txtPhoneN.Text = "";
        }
        private bool isValid()
        {
            int temp;

            if (txtName.Text.Length < 2)
            {
                txtName.Text = "";
                txtName.Focus();
                return (false);
            }
            if (txtSurname.Text.Length < 1)
            {
                txtSurname.Text = "";
                txtSurname.Focus();
                return (false);
            }
            if (txtAddress.Text.Length < 25)
            {
                txtAddress.Text = "";
                txtAddress.Focus();
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
            
            if (txtPhoneN.Text.Length != 10 || !(int.TryParse(txtPhoneN.Text, out temp)))
            {
                txtPhoneN.Text = "";
                txtPhoneN.Focus();
                return (false);
            }
            return (true);
        }
    }
}
using System;
using LibSite;
using System.Data.OleDb;

namespace WebApplication2
{
    public partial class Employees : System.Web.UI.Page
    {
        clsDB newCon = new clsDB();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (isValid())
            {
                newCon.command.Parameters.Add("@userType", OleDbType.VarChar);
                newCon.command.Parameters.Add("@name", OleDbType.VarChar);
                newCon.command.Parameters.Add("@surname", OleDbType.VarChar);
                newCon.command.Parameters.Add("@address", OleDbType.VarChar);
                newCon.command.Parameters.Add("@phnumber", OleDbType.VarChar);
                newCon.command.Parameters["@userType"].Value = cbxPosition.SelectedItem.Text;
                newCon.command.Parameters["@name"].Value = txtName.Text;
                newCon.command.Parameters["@surname"].Value = txtSurname.Text;
                newCon.command.Parameters["@address"].Value = txtAddress.Text;
                newCon.command.Parameters["@phnumber"].Value = txtPhoneN.Text;
                newCon.connDB(Session["db"].ToString());
                newCon.Query = "INSERT INTO Employees (userType, empName, surname, address, phnumber) VALUES (@userType, @name, @surname, @address, @phnumber);";
                if(newCon.db_non_returning_query() == 1)
                {
                    
                }
            }
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

            if (txtPhoneN.Text.Length != 10 || !(int.TryParse(txtPhoneN.Text, out temp)))
            {
                txtPhoneN.Text = "";
                txtPhoneN.Focus();
                return (false);
            }
            return (true);
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtAddress.Text = "";
            txtName.Text = "";
            txtPhoneN.Text = "";
            txtSurname.Text = "";
            cbxPosition.SelectedIndex = 0;
        }
    }
}
using System.Data;
using System.Data.OleDb;
using System.Security.Cryptography;
using System.Text;

namespace LibSite
{
    public class clsUserManagement:clsDB
    {
        private string _name, _surname;
        public string name
        {
            get { return _name; }
            private set { _name = value; }
        }
        public string surname
        {
            get { return _surname; }
            private set { _surname = value; }
        }
        //authenticate the eployee trying to gain access to the system.
        public bool Login(string UserName, string passKey)
        {
            DataTable loginTable;
            command.Parameters.Add("@UserName", OleDbType.VarChar);
            command.Parameters.Add("@PassKey", OleDbType.VarChar);
            command.Parameters["@UserName"].Value = UserName;
            command.Parameters["@PassKey"].Value = passKey;
            Query = "SELECT userType, empName, surname FROM Managers WHERE userName = @UserName AND passKey = @PassKey;";
            loginTable = db_select();
            if (loginTable.Rows.Count == 1)
            {
                userType = loginTable.Rows[0].ItemArray[0].ToString();
                name = loginTable.Rows[0].ItemArray[1].ToString();
                surname = loginTable.Rows[0].ItemArray[2].ToString();
                loginTable.Dispose();
                return (true);
            }
            loginTable.Dispose();
            return (false);
        }
        //change password, only accessible to the currently logged on Manager.
        public bool changePassKey(string passKey)
        {
            command.Parameters.Add("@UserName", OleDbType.VarChar);
            command.Parameters.Add("@PassKey", OleDbType.VarChar);
            command.Parameters["@UserName"].Value = userName;
            command.Parameters["@PassKey"].Value = passKey;
            Query = "UPDATE Managers SET passKey=@PassKey WHERE userName=@UserName";
            if (db_non_returning_query() == 1)
            {
                return (true);
            }
            return (false);
        }
        //only accessible to the office Manager
        //add a new employee to the system.
        public bool addUser(string UserName, string passKey, string UserType, string name, string surname, string address, string phnumber)
        {
            command.Parameters.Add("@UserName", OleDbType.VarChar);
            command.Parameters.Add("@PassKey", OleDbType.VarChar);
            command.Parameters.Add("@userType", OleDbType.VarChar);
            command.Parameters.Add("@name", OleDbType.VarChar);
            command.Parameters.Add("@surname", OleDbType.VarChar);
            command.Parameters.Add("@address", OleDbType.VarChar);
            command.Parameters.Add("@phnumber", OleDbType.VarChar);
            command.Parameters["@UserName"].Value = UserName;
            command.Parameters["@PassKey"].Value = passKey;
            command.Parameters["@userType"].Value = UserType;
            command.Parameters["@name"].Value = name;
            command.Parameters["@surname"].Value = surname;
            command.Parameters["@address"].Value = address;
            command.Parameters["@phnumber"].Value = phnumber;
            Query = "INSERT INTO Managers (userName, passKey, userType, empName, surname, address, phnumber) VALUES (@UserName, @PassKey, @userType, @name, @surname, @address, @phnumber);";
            if (db_non_returning_query() > 0)
            {
                return (true);
            }
            return (false);
        }
        //also only accessible to the office manager.
        //remove an employee from the system.
        public bool removeUser(string UserName)
        {
            command.Parameters.Add("@UserName");
            command.Parameters["@UserName"].Value = UserName;
            Query = "DELETE * FROM Employees WHERE userName = @userName;";
            if (db_non_returning_query() > 0)
            {
                return (true);
            }
            return (false);
        }
    }
}

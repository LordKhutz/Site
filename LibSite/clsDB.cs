using System;
using System.Data.OleDb;
using System.Data;

namespace LibSite
{
    public class clsDB
    {
        private OleDbConnection db_conn = new OleDbConnection();
        private OleDbCommand comm = new OleDbCommand();
        private string query;
        private static string _userName, _userType;
        public clsDB()
        {
            comm.Connection = db_conn;
        }
        public string Query
        {
            protected get
            {
                return query;
            }
            set
            {
                query = value;
            }
        }
        public OleDbCommand command
        {
            get
            {
                return comm;
            }
            set
            {
                comm = value;
            }
        }
        public string userName
        {
            get
            {
                return _userName;
            }
            set
            {
                _userName = value;
            }
        }
        public string userType
        {
            get
            {
                return _userType;
            }
            protected set
            {
                _userType = value;
            }
        }
        public void connDB(string db_loc)
        {
            string conn_str = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + db_loc + ";";
            try
            {
                db_conn.ConnectionString = conn_str;
                db_conn.Open();
            }
            catch (Exception error)
            {
                throw error;
            }
        }
        public int db_non_returning_query()
        {
            int affctdRows = 0;
            comm.CommandText = query;
            try
            {
                affctdRows = comm.ExecuteNonQuery();
            }
            catch (Exception error)
            {
                throw new Exception (error.Message);
            }
            finally
            {
                db_conn.Close();
            }
            return (affctdRows);
        }
        public DataTable db_select()
        {
            DataTable myTable = new DataTable();
            comm.CommandText = query;
            try
            {
                myTable.Load(comm.ExecuteReader());
            }
            catch(Exception error)
            {
                throw error;
            }
            finally
            {
                db_conn.Close();
            }
            return myTable;
        }
    }
}

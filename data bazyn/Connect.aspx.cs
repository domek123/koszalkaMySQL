using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace data_bazyn
{
    public partial class ConnectData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lInfo.Text = "Połącz się z bazą danych";
            tbServer.Text = "localhost";
            tbDatabase.Text = "testowa";
            tbTable.Text = "table";
            tbUser.Text = "root";
        }
        protected void bConnect_Click(object sender, EventArgs e)
        {
            try
            {
                cn.server = tbServer.Text;
                cn.db = tbDatabase.Text;
                cn.user = tbUser.Text;
                cn.table = tbTable.Text;
                MySqlConnection conn = cn.connect();
                conn.Open();
                try
                {
                    string query = "CREATE TABLE `" + cn.table + "` (" +
                    "Id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY," +
                    "Authors VARCHAR(255) NOT NULL," +
                    "Title VARCHAR(255) NOT NULL," +
                    "Release_date CHAR(10) NOT NULL," +
                    "ISBN CHAR(20) NOT NULL," +
                    "Format CHAR(3) NOT NULL," +
                    "Pages SMALLINT(6) NOT NULL," +
                    "Description VARCHAR(255) NOT NULL)" ;
                    MySqlCommand comm = new MySqlCommand(query, conn);
                    comm.ExecuteNonQuery();
                    Console.WriteLine("utworzono tabele");
                }
                catch
                {
                    Console.WriteLine("taka tabela juz istnieje");
                }
                Response.Redirect("Register.aspx");
            }
            catch
            {
                lInfo.Text = "Error! Nie udało się połaczyć z bazą";
            }

        }
    }
}
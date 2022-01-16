using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace data_bazyn
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conn = cn.connect();
                conn.Open();
                string password = Crypto.createMD5(tbPassword.Text);
                string query = "SELECT `Login` FROM `users` WHERE `Login`='" + tbLogin.Text + "' AND `Password`='" + password + "'";
                MySqlCommand comm = conn.CreateCommand();
                comm.CommandText = query;
                MySqlDataReader reader = comm.ExecuteReader();
                bool empty = true;
                while (reader.Read())
                {
                    empty = false;
                }
                if (empty == false)
                {
                    Response.Redirect("Show.aspx");
                }
                else
                {
                    lInfo.Text = "nie zalogowano";
                }
            }
            catch(Exception ex)
            {
                lInfo.Text = "Błąd (" + ex.Message + ")";
            }


        }
    }
}
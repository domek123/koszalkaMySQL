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
                Response.Redirect("Show.aspx");
            }
            catch
            {
                lInfo.Text = "Error! Nie udało się połaczyć z bazą";
            }

        }
    }
}
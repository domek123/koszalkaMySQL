using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace data_bazyn
{
    public class ReadData
    {
        public static DataTable Read(string command)
        {
            MySqlConnection connection = cn.connect();
            connection.Open();
            MySqlCommand cm = new MySqlCommand(command, connection);

            MySqlDataAdapter da = new MySqlDataAdapter(cm);
            DataTable dt = new DataTable();
            da.Fill(dt);
            da.Dispose();
            return dt;
        }
    }
}
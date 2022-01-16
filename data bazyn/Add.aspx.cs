using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace data_bazyn
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                insert(tbAuthor.Text, tbTitle.Text, tbDate.Text, tbISBN.Text, tbFormat.Text, Int32.Parse(tbPage.Text), TbDescription.Text);
                Response.Redirect("Show.aspx");
            }
            catch
            {
                lInfo.Text = "dane nie mogą być puste";
            }
            
            
        }


        public int insert(string Author, string title, string date, string isbn, string format, int pages, string desc)
        {

            MySqlConnection conn = cn.connect();
            conn.Open();
            if (conn == null) return -1;
            MySqlCommand command = conn.CreateCommand();
            try
            {
                command.CommandText = "INSERT INTO `" + cn.table + "` (`Authors`, `Title`, `Release_date`, `ISBN`, `Format`, `Pages`, `Description`) VALUES ('" + Author + "', '" + title + "', '" + date + "', '" + isbn + "', '" + format + "', " + pages + ", '" + desc + "');";
                command.ExecuteNonQuery();
            }
            catch(MySql.Data.MySqlClient.MySqlException ex)
            {
                lInfo.Text = "Wystąpił błąd bazy " + ex;
            }
            return 1;
        }

    }
}
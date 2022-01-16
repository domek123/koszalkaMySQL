using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace data_bazyn
{

    public partial class Show : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {
            cn.connect().Open();
            lTitle.Text = "Dane z " + cn.db + " / " + cn.table;
            if (!Page.IsPostBack)
            {
                Searched();
            }
        }
        public static IList<T> GetAllControls<T>(Control control) where T : Control
        {
            var lst = new List<T>();
            foreach (Control item in control.Controls)
            {
                var ctr = item as T;
                if (ctr != null)
                    lst.Add(ctr);
                else
                    lst.AddRange(GetAllControls<T>(item));

            }
            return lst;
        }
        void Searched()
        {
            string query = "Select * From `" + cn.table + "` Where ";
            var TextBoxes = GetAllControls<TextBox>(this);
            foreach (TextBox lst in TextBoxes)
            {
                if (lst.Text.Trim() != "")
                {
                    if (lst.ID == "Pages")
                    {
                        query += "`" + lst.ID + "`=" + lst.Text + " AND ";
                    }
                    else
                    {
                        query += "`" + lst.ID + "`='" + lst.Text + "' AND ";
                    }

                }
            }
            string text = query.Substring(0, query.Length - 4);
            GridView1.DataSource = ReadData.Read(text);
           
            GridView1.DataBind();
        }
        protected void btnShow_Click(object sender, EventArgs e)
        {
            var TextBoxes = GetAllControls<TextBox>(this);
            foreach (TextBox lst in TextBoxes)
            {
                lst.Text = "";
            }
            GridView1.DataSource = ReadData.Read("Select * From `" + cn.table + "`");

            GridView1.DataBind();
        }
        protected void bAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {   
            MySqlConnection connection = cn.connect();
            connection.Open();
            string query = "Delete From `" + cn.table + "` where `Id` = @id";
            MySqlCommand comm = new MySqlCommand(query, connection);
            comm.Parameters.AddWithValue("@id", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
            comm.ExecuteNonQuery();
            Searched();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Searched();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            MySqlConnection connection = cn.connect();
            connection.Open();
            string query = "Update `" + cn.table + "` Set `Authors`=@A, `Title`=@T, `Release_date`=@R, `ISBN`=@I, `Format`=@F, `Pages`=@P, `Description`=@D Where `Id` = @id";
            MySqlCommand comm = new MySqlCommand(query, connection);

            comm.Parameters.AddWithValue("@id", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
            comm.Parameters.AddWithValue("@A", (GridView1.Rows[e.RowIndex].FindControl("Authors") as TextBox).Text.Trim());
            comm.Parameters.AddWithValue("@T", (GridView1.Rows[e.RowIndex].FindControl("Title") as TextBox).Text.Trim());
            comm.Parameters.AddWithValue("@R", (GridView1.Rows[e.RowIndex].FindControl("Release_date") as TextBox).Text.Trim());
            comm.Parameters.AddWithValue("@I", (GridView1.Rows[e.RowIndex].FindControl("ISBN") as TextBox).Text.Trim());
            comm.Parameters.AddWithValue("@F", (GridView1.Rows[e.RowIndex].FindControl("Format") as TextBox).Text.Trim());
            comm.Parameters.AddWithValue("@P", Convert.ToInt32((GridView1.Rows[e.RowIndex].FindControl("Pages") as TextBox).Text.Trim()));
            comm.Parameters.AddWithValue("@D", (GridView1.Rows[e.RowIndex].FindControl("Description") as TextBox).Text.Trim());
            comm.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            Searched();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Searched();
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Searched();
        }


    }
}
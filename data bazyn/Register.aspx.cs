using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace data_bazyn
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {   
            if(tbLogin.Text != "" && tbPassword.Text != "" && tbEmail.Text != "" && tbCheck.Text != "")
            {   
                if(tbPassword.Text == tbCheck.Text)
                {
                    if (tbEmail.Text.Contains("@") && tbEmail.Text.Contains("."))
                    {
                        
                        try
                        {
                            MySqlConnection conn = cn.connect();
                            conn.Open();
                            string password = Crypto.createMD5(tbPassword.Text);
                            string q = "SELECT `Login` FROM `users` WHERE `Login`='" + tbLogin.Text + "' AND `Password`='" + password + "'";
                            MySqlCommand c = conn.CreateCommand();
                            c.CommandText = q;
                            MySqlDataReader reader = c.ExecuteReader();
                            bool empty = true;
                            while (reader.Read())
                            {
                                empty = false;

                            }
                            if (empty == false)
                            {
                                lInfo.Text = "dane już istnieją. Spróbuj ponownie";
                                tbLogin.Text = "";
                                tbPassword.Text = "";
                                tbEmail.Text = "";
                            }
                            else
                            {
                                reader.Close();
                                string command = "Insert Into `users` (`Login`,`Password`,`Email`) VALUES ('" + tbLogin.Text + "','" + password + "','" + tbEmail.Text + "')";
                                MySqlCommand comm = new MySqlCommand(command, conn);
                                comm.ExecuteNonQuery();
                                SmtpClient client;
                                MailMessage message;
                                try
                                {
                                    message = new MailMessage(tbEmail.Text, "trzypdwa@gmail.com");
                                    message.Subject = "Potwierdzenie wysłania";
                                    message.Body = "zostałeś zajerestrowany do naszej usługi\n Twój login: " + tbLogin.Text + "\n Twójoje hasło: " + tbPassword.Text + "\n\n Pozdrawiamy \n Zespół JD100%";
                                    client = new SmtpClient
                                    {
                                        Host = "smtp.gmail.com",
                                        Port = 587,
                                        EnableSsl = true,
                                        DeliveryMethod = SmtpDeliveryMethod.Network,
                                        UseDefaultCredentials = false,
                                        Credentials = new NetworkCredential("trzypdwa@gmail.com", "2347@zsl")
                                    };
                                    client.Send(message);
                                }
                                catch (Exception ex)
                                {
                                    lInfo.Text = ex.Message;
                                }
                                Response.Redirect("Login.aspx");
                            }
                        }
                        catch(Exception ex)
                        {
                            lInfo.Text = "błąd (" + ex.Message + ")";
                        }
                    }
                    else
                    {
                        lInfo.Text = "niepoprawna forma emaila";
                        tbEmail.Text = "";
                    }
                }
                else
                {
                    lInfo.Text = "potwierdź hasło";
                    tbCheck.Text = "";
                }
            }
            else
            {
                lInfo.Text = "dane nie mogą być puste";
            }
        }

        protected void btnLog_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}

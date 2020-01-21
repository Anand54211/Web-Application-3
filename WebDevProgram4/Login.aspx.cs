using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebDevProgram4
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BtnAccount.Visible = false;
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            // Read connection string from Web.config
            
            // define SELECT query with parameters


            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["c432019sp01srinivasanaConnectionString"].ConnectionString);
            cnn.Open();
            string SqlQuery = "Select count(*) From Users WHERE username= '" + TxtLogin.Text + "'";           
            SqlCommand cmd = new SqlCommand(SqlQuery, cnn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            cnn.Close();
            if (temp ==1)
            {
                cnn.Open();
                string checkpasswordQuery = "Select password From Users WHERE username= '" + TxtLogin.Text + "'";
                SqlCommand passwordcmd = new SqlCommand(checkpasswordQuery, cnn);
                string password = passwordcmd.ExecuteScalar().ToString().Replace(" ","");
                if(password == TxtPass.Text)
                {
                    Session["New"] = TxtLogin.Text;
                    LblMessage.Text = ("Welcome you are now signed in");
                    BtnLogin.Visible = false;
                    BtnLogout.Visible = true;
                    BtnAccount.Visible = true;
                   
                    
                }
                else
                {
                    LblMessage.Text = ("Password is incorrect");
                }
            }
            else
            {
                LblMessage.Text = ("Username is not correct");
            }
              
            
               
           
        }

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void BtnAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/MyAccount.aspx?username=" + TxtLogin.Text,false);
        }
    }
}
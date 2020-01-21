using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevProgram4
{
    public partial class MyAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            string username = Request.QueryString["username"];
            LblUser.Text = username;
            // Read connection string from Web.config
            string ConnString = ConfigurationManager.ConnectionStrings["c432019sp01srinivasanaConnectionString"].ConnectionString;
            // define SELECT query with parameters
            string SqlQuery = "Select * From Users WHERE username = @username";
            try
            {
                // create connection and command objects
                SqlConnection cnn = new SqlConnection(ConnString);
                SqlCommand cmd = new SqlCommand(SqlQuery, cnn);
                // define parameters and their values
                cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = LblUser.Text;
                
                // open connection, execute SELECT, close connection
                cnn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    LblOldPass.Text = reader.GetValue(1).ToString();
                    LblOldLastname.Text = reader.GetValue(2).ToString();
                    LblOldFirstname.Text = reader.GetValue(3).ToString();
                    LblOldAddress.Text = reader.GetValue(4).ToString();
                    LblOldBirthdate.Text = reader.GetValue(5).ToString();
                    LblOldPhone.Text = reader.GetValue(6).ToString();
                }
                reader.Close();
                cmd.Dispose();
                cnn.Close();
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = ex.Message;
            }
            if (LblUser.Text == "")
            {
                Lblmessage.Text = "Need to be signed in to access details and Press the My Account button in the Login page to access details";
               
            }
        }

        

        protected void BtnUpdatePass_Click(object sender, EventArgs e)
        {
            // Read connection string from Web.config
            string ConnString = ConfigurationManager.ConnectionStrings["c432019sp01srinivasanaConnectionString"].ConnectionString;
            // define UPDATE query with parameters
            string query = "Update Users SET password=@password WHERE username= '" + LblUser.Text + "'";
            try
            {
                // create connection and command
                SqlConnection cn = new SqlConnection(ConnString);
                SqlCommand cmd = new SqlCommand(query, cn);
                // define parameters and their values

                cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = TxtUpdatePassword.Text;
                

                // open connection, execute UPDATE, close connection
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                lblErrorMessage.Text = "Update successful!";
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void BtnUpdateLname_Click(object sender, EventArgs e)
        {
            // Read connection string from Web.config
            string ConnString = ConfigurationManager.ConnectionStrings["c432019sp01srinivasanaConnectionString"].ConnectionString;
            // define UPDATE query with parameters
            string query = "Update Users SET  lastName=@lastName WHERE username= '" + LblUser.Text + "'";
            try
            {
                // create connection and command
                SqlConnection cn = new SqlConnection(ConnString);
                SqlCommand cmd = new SqlCommand(query, cn);
                // define parameters and their values

                
                cmd.Parameters.Add("@lastname", SqlDbType.VarChar).Value = TxtUpdateLastname.Text;
                

                // open connection, execute UPDATE, close connection
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                lblErrorMessage.Text = "Update successful!";
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void BtnUpdateFname_Click(object sender, EventArgs e)
        {
            // Read connection string from Web.config
            string ConnString = ConfigurationManager.ConnectionStrings["c432019sp01srinivasanaConnectionString"].ConnectionString;
            // define UPDATE query with parameters
            string query = "Update Users SET  firstName=@firstName WHERE username= '" + LblUser.Text + "'";
            try
            {
                // create connection and command
                SqlConnection cn = new SqlConnection(ConnString);
                SqlCommand cmd = new SqlCommand(query, cn);
                // define parameters and their values

                
                cmd.Parameters.Add("@firstname", SqlDbType.VarChar).Value = TxtUpdateFirstname.Text;
               

                // open connection, execute UPDATE, close connection
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                lblErrorMessage.Text = "Update successful!";
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void BtnUpdateAddress_Click(object sender, EventArgs e)
        {
            // Read connection string from Web.config
            string ConnString = ConfigurationManager.ConnectionStrings["c432019sp01srinivasanaConnectionString"].ConnectionString;
            // define UPDATE query with parameters
            string query = "Update Users SET  address=@address WHERE username= '" + LblUser.Text + "'";
            try
            {
                // create connection and command
                SqlConnection cn = new SqlConnection(ConnString);
                SqlCommand cmd = new SqlCommand(query, cn);
                // define parameters and their values

               
                cmd.Parameters.Add("@address", SqlDbType.VarChar).Value = TxtUpdateAddress.Text;
               

                // open connection, execute UPDATE, close connection
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                lblErrorMessage.Text = "Update successful!";
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void BtnUpdateBirthdate_Click(object sender, EventArgs e)
        {
            // Read connection string from Web.config
            string ConnString = ConfigurationManager.ConnectionStrings["c432019sp01srinivasanaConnectionString"].ConnectionString;
            // define UPDATE query with parameters
            string query = "Update Users SET  birthDate=@birthDate WHERE username= '" + LblUser.Text + "'";
            try
            {
                // create connection and command
                SqlConnection cn = new SqlConnection(ConnString);
                SqlCommand cmd = new SqlCommand(query, cn);
                // define parameters and their values

               
                cmd.Parameters.Add("@birthDate", SqlDbType.Date).Value = Convert.ToDateTime(TxtUpdateBirthdate.Text);
                

                // open connection, execute UPDATE, close connection
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                lblErrorMessage.Text = "Update successful!";
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void BtnUpdatePhone_Click(object sender, EventArgs e)
        {
            // Read connection string from Web.config
            string ConnString = ConfigurationManager.ConnectionStrings["c432019sp01srinivasanaConnectionString"].ConnectionString;
            // define UPDATE query with parameters
            string query = "Update Users SET phone=@phone WHERE username= '" + LblUser.Text + "'";
            try
            {
                // create connection and command
                SqlConnection cn = new SqlConnection(ConnString);
                SqlCommand cmd = new SqlCommand(query, cn);
                // define parameters and their values

               
                cmd.Parameters.Add("@phone", SqlDbType.BigInt).Value = Convert.ToInt64(TxtUpdatePhone.Text);

                // open connection, execute UPDATE, close connection
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                lblErrorMessage.Text = "Update successful!";
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = ex.Message;
            }
        }
    }
}
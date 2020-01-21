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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void BtnSignup_Click(object sender, EventArgs e)
        {
            // Read connection string from Web.config
            string ConnString = ConfigurationManager.ConnectionStrings["c432019sp01srinivasanaConnectionString"].ConnectionString;
            // define INSERT query with parameters
            string query = "INSERT INTO Users VALUES (@username, @password, @lastname, @firstname, @address, @birthDate, @phone)";
            try
            {
                // create connection and command
                SqlConnection cn = new SqlConnection(ConnString);
                SqlCommand cmd = new SqlCommand(query, cn);
                // define parameters and their values
                cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = TxtUsername.Text;
                cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = TxtPassword.Text;
                cmd.Parameters.Add("@lastname", SqlDbType.VarChar).Value = TxtLastname.Text;
                cmd.Parameters.Add("@firstname", SqlDbType.VarChar).Value = TxtFirstname.Text;
                cmd.Parameters.Add("@address", SqlDbType.VarChar).Value = TxtAddress.Text;
                cmd.Parameters.Add("@birthDate", SqlDbType.Date).Value = Convert.ToDateTime(TxtBirthdate.Text);
                cmd.Parameters.Add("@phone", SqlDbType.BigInt).Value = Convert.ToInt64(TxtPhone.Text);
                // open connection, execute INSERT, close connection
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                lblErrorMessage.Text = "Sign Up  successful!";
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = ex.Message;
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayroll
{
    public partial class Login : System.Web.UI.Page
    {
        static string str = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("sp_Login", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@EmailId", TextBox1.Text);
            com.Parameters.AddWithValue("@Password", TextBox2.Text);
            con.Open();
            var datareader = com.ExecuteReader();
            if (datareader != null)
            {
                Session["users"] = datareader;
                Response.Redirect("HomePage.aspx");
            }
            else
            {

            }
            con.Close();
        }
    }
}
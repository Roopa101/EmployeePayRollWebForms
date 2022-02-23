using Microsoft.Azure.Documents;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using SqlParameter = System.Data.SqlClient.SqlParameter;

namespace EmployeePayroll
{
    public partial class Login : System.Web.UI.Page
    {
        protected bool AuthenticateUser(string email_id, string password)
        {
            string str = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(str))
            {
                SqlCommand com = new SqlCommand("sp_Login", con);
                com.CommandType = CommandType.StoredProcedure;
                SqlParameter paramEmail_Id = new SqlParameter("@email", email_id);
                SqlParameter paramPassword = new SqlParameter("@pswrd", password);
                com.Parameters.Add(paramEmail_Id);
                com.Parameters.Add(paramPassword);
                con.Open();
                int ReturnCode = (int)com.ExecuteScalar();
                return ReturnCode == 1;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write("Application code executed using: ");
            //Response.Write(System.Security.Principal.WindowsIdentity.GetCurrent().Name + "<br/>");

            //Response.Write("Is user Authenticated ");
            //Response.Write(User.Identity.IsAuthenticated.ToString() + "<br/>");

            //Response.Write("Authentication Type, if Authenticated: ");
            //Response.Write(User.Identity.AuthenticationType + "<br/>");

            //Response.Write("User Name, if Authenticated: ");
            //Response.Write(User.Identity.Name + "<br/>");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //SqlCommand com = new SqlCommand("sp_Login", con);
            //com.CommandType = CommandType.StoredProcedure;
            //com.Parameters.AddWithValue("@EmailId", TextBox1.Text);
            //com.Parameters.AddWithValue("@Password", TextBox2.Text);
            //con.Open();
            //var datareader = com.ExecuteReader();
            //if (datareader != null)
            //{
            //    Session["users"] = datareader;
            //    Response.Redirect("HomePage.aspx");
            //}
            //else
            //{

            //}
            //con.Close();
            ////if (FormsAuthentication.Authenticate(TextBox1.Text, TextBox2.Text))
            //{
            //    FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, false);
            //}
            //else
            //{
            //    message.Text = "Invalid User Name and/or Password";
            //}
            if (AuthenticateUser(TextBox1.Text, TextBox2.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);
            }
            else
            {
                Label1.Text = "Invalid Email Or Password";
            }
        }
    }
}
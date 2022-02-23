using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayroll
{
    public partial class SignUp : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "sp_Register";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add("@fname", System.Data.SqlDbType.VarChar).Value = TextFN.Text.Trim();
                cmd.Parameters.Add("@lname", System.Data.SqlDbType.VarChar).Value = TextLN.Text.Trim();
                cmd.Parameters.Add("@email", System.Data.SqlDbType.VarChar).Value = TextID.Text.Trim();
                cmd.Parameters.Add("@pswrd", System.Data.SqlDbType.VarChar).Value = TextPW.Text.Trim();
                cmd.Parameters.Add("@phno", System.Data.SqlDbType.VarChar).Value = TextMN.Text.Trim();
                cmd.Connection = con;
                con.Open();
                int ReturnCode = (int)cmd.ExecuteScalar();
                if (ReturnCode == -1)
                {
                    Label2.Text = "Email Id already Exists, Please use another Email";
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
                con.Close();
            }
        }
    }
}
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
                cmd.CommandText = "spInsertValue";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add("@fname", System.Data.SqlDbType.VarChar).Value = TextFN.Text.Trim();
                cmd.Parameters.Add("@lname", System.Data.SqlDbType.VarChar).Value = TextLN.Text.Trim();
                cmd.Parameters.Add("@email", System.Data.SqlDbType.VarChar).Value = TextID.Text.Trim();
                cmd.Parameters.Add("@pswrd", System.Data.SqlDbType.VarChar).Value = TextPW.Text.Trim();
                cmd.Parameters.Add("@phno", System.Data.SqlDbType.VarChar).Value = TextMN.Text.Trim();
                cmd.Connection = con;
                con.Open();
                int i=cmd.ExecuteNonQuery();
                if(i !=0)
                {
                 Label2.Text = "Registered Successfully";
                    Label2.ForeColor = System.Drawing.Color.SteelBlue;
                }
                else
                {
                    Label2.Text = "Registered Failed!";
                    Label2.ForeColor = System.Drawing.Color.Red;

                }
            }
        }
    }
}
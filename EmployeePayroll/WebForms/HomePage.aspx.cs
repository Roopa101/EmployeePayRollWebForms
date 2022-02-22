using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayroll
{
    public partial class HomePage : System.Web.UI.Page
    {
        string constring = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //GridView1.DataSource = Session["users"];
            //GridView1.DataBind();

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {



        }
        protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView3.DataKeys[e.RowIndex].Value.ToString());
            using (SqlConnection con = new SqlConnection(constring))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from EmployeeWebForm where id='" + id + "'", con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('Data has Deleted')</script>");
                    GridView3.EditIndex = -1;
                    GridView3.DataBind();
                }
            }
        }
            protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeePayRollForm.aspx");
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
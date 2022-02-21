using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayroll.WebForms
{
    public partial class EmployeePayRollForm : System.Web.UI.Page
    {
        static string str = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //Fill Years
                for (int i = 2014; i <= 2022; i++)
                {
                    ddlYear.Items.Add(i.ToString());
                }
                ddlYear.Items.FindByValue(System.DateTime.Now.Year.ToString()).Selected = true;  //set current year as selected

                //Fill Months
                for (int i = 1; i <= 12; i++)
                {
                    ddlMonth.Items.Add(i.ToString());
                }
                ddlMonth.Items.FindByValue(System.DateTime.Now.Month.ToString()).Selected = true; // Set current month as selected

                //Fill days
                FillDays();
            }
        }

        public void FillDays()
        {
            ddlDay.Items.Clear();
            //getting numbner of days in selected month & year
            int noOfDays = DateTime.DaysInMonth(Convert.ToInt32(ddlYear.SelectedValue), Convert.ToInt32(ddlMonth.SelectedValue));

            //Fill days
            for (int i = 1; i <= noOfDays; i++)
            {
                ddlDay.Items.Add(i.ToString());
            }
            ddlDay.Items.FindByValue(System.DateTime.Now.Day.ToString()).Selected = true;// Set current date as selected
        }

        protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillDays();
        }

        protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillDays();
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("sp_Form", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Profile_Image", RadioButtonList2.SelectedItem.Value);
            com.Parameters.AddWithValue("@Name", TextBox1.Text);
            com.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedValue);
            string checklist = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    if (checklist == "")
                    {
                        checklist = CheckBoxList1.Items[i].Value;
                    }
                    else
                    {
                        checklist += "  " + CheckBoxList1.Items[i].Value;
                    }
                }
            }
            com.Parameters.AddWithValue("@Department", checklist);
            com.Parameters.AddWithValue("@Salary", DropDownList1.SelectedValue);
            com.Parameters.AddWithValue("@Start_Date", ddlDay.SelectedValue + '-' + ddlMonth.SelectedValue + '-' + ddlYear.SelectedValue);
            com.Parameters.AddWithValue("@Notes", TextBox2.Text);

            con.Open();
            var datareader = com.ExecuteReader();
            if (datareader != null)
            {
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                //Label5.Text = "Enter Proper Info....";
                //Label5.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
        }
    }
}
    
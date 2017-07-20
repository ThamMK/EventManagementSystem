using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventManagementSystem
{
    public partial class Registration : System.Web.UI.Page
    {
        
        int day_max_value = 31;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetupYear();
                SetupDate();
            }
        }

        public void SetupMaxDate()
        {
            if (DropDownListMonth.SelectedValue == "February" && (int.Parse(DropDownListYear.SelectedValue.ToString()) % 4 == 0))
            {
                day_max_value = 29;
            }
            else if (DropDownListMonth.SelectedValue == "February")
            {
                day_max_value = 28;
            }
            else if (DropDownListMonth.SelectedValue == "January" || DropDownListMonth.SelectedValue == "March" || DropDownListMonth.SelectedValue == "May"
               || DropDownListMonth.SelectedValue == "July" || DropDownListMonth.SelectedValue == "August" || DropDownListMonth.SelectedValue == "October"
               || DropDownListMonth.SelectedValue == "December")
            {
                day_max_value = 31;
            }
            else
                day_max_value = 30;
        }

        public void SetupDate()
        {
            int maxDayLimit = day_max_value;
            DropDownListDay.Items.Clear();
            for (int x = 1; x <= maxDayLimit; x++)
            {
                DropDownListDay.Items.Add(x.ToString());
            }
        }

        public void SetupYear()
        {
            int currYear = DateTime.Now.Year;
            DropDownListYear.Items.Clear();
            int bottomLimit = currYear - 100;
            for (int x = currYear; x > bottomLimit; x--)
            {
                DropDownListYear.Items.Add(x.ToString());
            }
        }

        protected void butCancel_Click(object sender, EventArgs e)
        {
            
        }

        public void GettingValue()
        {
            String name = txtName.Text;
            String id = txtStudentID.Text;
            String course = txtStudentCourse.Text;
        }
        
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            GettingValue();
            if ((txtName.Text).Length == 0)
            {
                lblEMFullName.Text = "Please fill in your full name.";
            }else
            {
                lblEMFullName.Text = "";
            }
            if(txtStudentID.Text == "")
            {
                lblEMStudentID.Text = "Please fill in your student id.";
            }else if(txtStudentID.Text != "1620701")
            {
                lblEMStudentID.Text = "Sorry, but this student id did not exist.";
            }else
            {
                lblEMStudentID.Text = "";
            }
            if(txtStudentCourse.Text == "")
            {
                lblEMStudentCourse.Text = "Please fill in your course.";
            }else if(txtStudentCourse.Text != "Software Engineering")
            {
                lblEMStudentCourse.Text = "Sorry, but this course name did not exist.";
            }
            else
            {
                lblEMStudentCourse.Text = "";
            }
        }

        protected void DropDownListMonth_SelectedIndexChanged1(object sender, EventArgs e)
        {
            SetupMaxDate();
            SetupDate();
        }

        protected void DropDownListDay_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownListYear_SelectedIndexChanged1(object sender, EventArgs e)
        {
            SetupMaxDate();
            SetupDate();
        }
    }

}
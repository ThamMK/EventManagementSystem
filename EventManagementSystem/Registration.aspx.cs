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
        
        protected void butCancel_Click(object sender, EventArgs e)
        {
            
        }
        
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Boolean pass = true;
            if(txtStudentID.Text == "")
            {
                lblEMStudentID.Text = "Please fill in your student id.";
                pass = false;
            }
            else if(txtStudentID.Text != "1620701")
            {
                lblEMStudentID.Text = "Sorry, but this student id did not exist.";
                pass = false;
            }else
            {
                lblEMStudentID.Text = "";
            }
            if(txtStudentCourse.Text == "")
            {
                lblEMStudentCourse.Text = "Please fill in your course.";
                pass = false;
            }
            else if(txtStudentCourse.Text != "Software Engineering")
            {
                lblEMStudentCourse.Text = "Sorry, but this course name did not exist.";
                pass = false;
            }
            else
            {
                lblEMStudentCourse.Text = "";
            }
            if (pass)
            {
                Response.Redirect("Homepage.aspx");
            }
        }
    }

}
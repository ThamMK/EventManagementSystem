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
    }

}
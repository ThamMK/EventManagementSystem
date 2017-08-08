using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventManagementSystem
{
    public partial class TestMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["Login"] != null)
            {
                if(Application["Login"].Equals("Login"))
                {
                    btnLogin.Style.Add("display", "none");
                    btnSignUp.Style.Add("display", "none");
                    user.Style.Add("display", "block");
                    System.Diagnostics.Debug.WriteLine("User login ady.......................");
                }

            }
        }

        public void logout_Click(object sender, EventArgs e)
        {
            Application["Login"] = "Logout";
            System.Diagnostics.Debug.WriteLine("User logout ady.......................");
            Response.Redirect("~/Homepage.aspx");
        }
    }
}
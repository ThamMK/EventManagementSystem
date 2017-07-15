using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventManagementSystem
{
    public partial class Testing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void createEvent(object sender, EventArgs e)
        {
            
            if (!(FUImage.HasFile))
            {
                string path = MapPath("~/Images/Event/" + FUImage.FileName);
                Label1.Text = FUImage.FileName;
                //FUImage.SaveAs(MapPath("~/Images/Event" + FUImage.FileName));
                //imgAddImage.ImageUrl =MapPath("~/Images/Event/" + FUImage.FileName);
                // imgAddImage.ImageUrl = path;
                //imgAddImage.ImageUrl = "~/Images/Event/"+ FUImage.FileName;
                imgAddImage.ImageUrl = path;
                //imgAddImage.ImageUrl = "~/Images/Event/event1.PNG";
                lblEventImage.Text = path;
                // SetImages();
            }
        }
    /*
        private void SetImages() {
            imgAddImage.ImageUrl = MapPath("~/" + FUImage.FileName);
        }*/
    }
}
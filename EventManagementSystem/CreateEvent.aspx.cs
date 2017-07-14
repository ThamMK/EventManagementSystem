using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventManagementSystem
{
    public partial class CreateEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void datetimepicker_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlTime_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        
        /*
protected void addImage_Click(object sender, ImageClickEventArgs e)
{
   if (FUImage.HasFile)
   {
       addImage.SaveAs(MapPath("/Images/Event/" + FUImage.FileName));
       //imgViewFile.ImageUrl = Server.MapPath("~/Event/" + FUImage.FileName);
       addImage.ImageUrl = "/Images/Event/" + FUImage.FileName;
   }
}*/

        /*
        protected void imgAddImage_Click(object sender, ImageClickEventArgs e)
        {
            if (FUImage.HasFile)
            {
                FUImage.SaveAs(MapPath("/Images/Event/" + FUImage.FileName));
                //imgViewFile.ImageUrl = Server.MapPath("~/Event/" + FUImage.FileName);
                imgAddImage.ImageUrl = "/Images/Event/" + FUImage.FileName;
            }
        }*/
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventManagementSystem
{
    public partial class RigistrationForm : System.Web.UI.Page
    {
        int month_max_value = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownListMonth.SelectedValue =="Februry" && (int.Parse(DropDownListYear.SelectedValue.ToString()) % 4 == 0))
            {
                month_max_value = 29;
            }else
            {
                month_max_value = 28;
            }

        }
    }

}
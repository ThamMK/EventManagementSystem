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
        String name;
        String email;
        String password;
        String comfirmPassword;
        int selectedYear;
        int day_max_value = 31;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetupYear();
                SetupDate();
            }
        }

        protected void DropDownListMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetupMaxDate();
            SetupDate();
        }



        protected void DropDownListYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetupMaxDate();
            SetupDate();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
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
            for (int x = currYear - 100; x <= currYear; x++)
            {
                DropDownListYear.Items.Add(x.ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void butCancel_Click(object sender, EventArgs e)
        {
            DropDownListMonth.SelectedIndex = 0;
            SetupYear();
            SetupMaxDate();
            SetupDate();
        }

        protected void butReset_Click(object sender, EventArgs e)
        {

        }

        public void ReassignValue()
        {
            
        }
    }

}
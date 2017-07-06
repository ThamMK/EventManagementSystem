using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventManagementSystem
{
    public partial class CheckAvailability : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void datetimepicker_TextChanged(object sender, EventArgs e)
        {
            
            String validation = datetimepicker.Text.ToString();
            DateTime parsed;
            bool valid = DateTime.TryParseExact(validation, "dd-MM-yyyy",
                                    CultureInfo.InvariantCulture,
                                    DateTimeStyles.None,
                                    out parsed);
            if (valid == true)
            {
                ddlVenue.Enabled = true;

                if (ddlVenue.SelectedItem.Value.Equals("1"))
                {
                    ddlVenue.Items.Remove(ddlVenue.Items.FindByText("Venue"));
                    ddlTime.Enabled = true;
                    ddlTime.Items.Add("08:00 - 10:00");
                    ddlTime.Items.Add("10:00 - 12:00");
                    ddlTime.Items.Add("12:00 - 14:00");
                }
                else if (ddlVenue.SelectedItem.Value.Equals("2"))
                {
                    ddlVenue.Items.Remove(ddlVenue.Items.FindByText("Venue"));
                    ddlTime.Enabled = true;
                    ddlTime.Items.Add("08:30 - 10:30");
                    ddlTime.Items.Add("10:30 - 12:30");
                    ddlTime.Items.Add("12:30 - 14:30");
                }
                else if (ddlVenue.SelectedItem.Value.Equals("3"))
                {
                    ddlVenue.Items.Remove(ddlVenue.Items.FindByText("Venue"));
                    ddlTime.Enabled = true;
                    ddlTime.Items.Add("08:15 - 10:15");
                    ddlTime.Items.Add("10:15 - 12:15");
                    ddlTime.Items.Add("12:15 - 14:15");
                }
                else if (ddlVenue.SelectedItem.Value.Equals("4"))
                {
                    ddlVenue.Items.Remove(ddlVenue.Items.FindByText("Venue"));
                    ddlTime.Enabled = true;
                    ddlTime.Items.Add("08:00 - 10:00");
                    ddlTime.Items.Add("11:00 - 13:00");
                    ddlTime.Items.Add("16:00 - 18:00");
                }
                else
                {
                    ddlTime.Enabled = false;

                }

            }
            else
            {
                ddlVenue.Enabled = false;
                ddlTime.Enabled = false;
            }
               
            }

        protected void ddlVenue_SelectedIndexChanged(object sender, EventArgs e)
        {
            String validation = datetimepicker.Text.ToString();
            DateTime parsed;
            bool valid = DateTime.TryParseExact(validation, "dd-MM-yyyy",
                                    CultureInfo.InvariantCulture,
                                    DateTimeStyles.None,
                                    out parsed);
            if (valid == true)
            {
                ddlTime.Items.Clear();
                ddlVenue.Enabled = true;

                if (ddlVenue.SelectedItem.Value.Equals("1"))
                {
                    ddlVenue.Items.Remove(ddlVenue.Items.FindByText("Venue"));
                    ddlTime.Enabled = true;
                    ddlTime.Items.Add("08:00 - 10:00");
                    ddlTime.Items.Add("10:00 - 12:00");
                    ddlTime.Items.Add("12:00 - 14:00");
                }
                else if (ddlVenue.SelectedItem.Value.Equals("2"))
                {
                    ddlVenue.Items.Remove(ddlVenue.Items.FindByText("Venue"));
                    ddlTime.Enabled = true;
                    ddlTime.Items.Add("08:30 - 10:30");
                    ddlTime.Items.Add("10:30 - 12:30");
                    ddlTime.Items.Add("12:30 - 14:30");
                }
                else if (ddlVenue.SelectedItem.Value.Equals("3"))
                {
                    ddlVenue.Items.Remove(ddlVenue.Items.FindByText("Venue"));
                    ddlTime.Enabled = true;
                    ddlTime.Items.Add("08:15 - 10:15");
                    ddlTime.Items.Add("10:15 - 12:15");
                    ddlTime.Items.Add("12:15 - 14:15");
                }
                else if (ddlVenue.SelectedItem.Value.Equals("4"))
                {
                    ddlVenue.Items.Remove(ddlVenue.Items.FindByText("Venue"));
                    ddlTime.Enabled = true;
                    ddlTime.Items.Add("08:00 - 10:00");
                    ddlTime.Items.Add("11:00 - 13:00");
                    ddlTime.Items.Add("16:00 - 18:00");
                }
                else
                {
                    ddlTime.Enabled = false;

                }

            }
            else
            {
                ddlVenue.Enabled = false;
                ddlTime.Enabled = false;
            }
        }
    }
    }

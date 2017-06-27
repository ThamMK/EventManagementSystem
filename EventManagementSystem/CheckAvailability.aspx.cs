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
            }
            else
            {
                ddlVenue.Enabled = false;
            }
                //datetimepicker.Attributes.Remove("disabled");
            }
        }
    }

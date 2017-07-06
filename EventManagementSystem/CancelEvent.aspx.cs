using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EventManagementSystem;

namespace EventManagementSystem
{
    public partial class CancelEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Event event1 = new Event("TARUC Relax", "12/05/2017", "12/05/2017", "10.00am", "5.00pm", "Bagunan Tan Siew Sin", "FREE", "Seminar", "", "Tham Ming Keat", "thammingkeat96@gmail.com", "~/Images/Event/event1.PNG");
                Event event2 = new Event("TARUC Education Fair", "12/05/2017", "15/05/2017", "10.00am", "5.00pm", "Sport Complex", "RM 100", "Seminar", "", "Yew Wen Bin", "yewwenbin96@gmail.com", "~/Images/Event/event2.PNG");

                List<Event> eventList = new List<Event>();
                eventList.Add(event1);
                eventList.Add(event2);

                Application["registeredEvent"] = eventList;

                System.Diagnostics.Debug.WriteLine("Image Path : " + ((List<Event>)Application["registeredEvent"])[0].imagePath.ToString());

                Repeater1.DataSource = eventList;
                Repeater1.DataBind();
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if(e.CommandName == "cancelEvent")
            {
                System.Diagnostics.Debug.WriteLine(e.CommandArgument.ToString());

                List<Event> eventList = (List<Event>) Application["registeredEvent"];

                eventList.RemoveAll(x => x.eventName.Equals(e.CommandArgument.ToString()));

                Repeater1.DataSource = eventList;
                Repeater1.DataBind();

                if (Repeater1.Items.Count <= 0) {
                    System.Diagnostics.Debug.WriteLine("No upcoming event is registered");
                }
            }
        }
    }
}
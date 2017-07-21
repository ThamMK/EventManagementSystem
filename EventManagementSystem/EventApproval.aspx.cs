using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventManagementSystem
{
    public partial class EventApproval : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Event event1 = new Event("TARUC Relax", "12/05/2017", "12/05/2017", "10.00am", "5.00pm", "Bagunan Tan Siew Sin", "FREE", "Seminar", "", "Tham Ming Keat", "thammingkeat96@gmail.com", "~/Images/Event/event1.PNG", "Rejected");
                Event event2 = new Event("TARUC Education Fair", "12/05/2017", "15/05/2017", "10.00am", "5.00pm", "Sport Complex", "RM 100", "Seminar", "", "Yew Wen Bin", "yewwenbin96@gmail.com", "~/Images/Event/event2.PNG", "Approved");
                Event event3 = new Event("TARUC Gaming Season", "08/07/2017", "08/07/2017", "9.30am", "9.00pm", "DK ABA", "Free", "Entertainment", "", "Tan Shiang Young", "shiangyoung96@gmail.com", "~/Images/Event/eventGaming.jpg","Pending");
                List<Event> eventList = new List<Event>();
                eventList.Add(event3);
                eventList.Add(event2);
                eventList.Add(event1);
                Repeater1.DataSource = eventList;
                Repeater1.DataBind();
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "cancelEvent")
            {
                System.Diagnostics.Debug.WriteLine(e.CommandArgument.ToString());

                List<Event> eventList = (List<Event>)Application["registeredEvent"];

                eventList.RemoveAll(x => x.eventName.Equals(e.CommandArgument.ToString()));

                Repeater1.DataSource = eventList;
                Repeater1.DataBind();

                if (Repeater1.Items.Count <= 0)
                {
                    System.Diagnostics.Debug.WriteLine("No upcoming event is registered");
                }
            }
        }

        public void Edit_ItemCreated(Object Sender, RepeaterItemEventArgs e) 
        {
            
                try
                {
                    LinkButton lblStatus = e.Item.FindControl("lblStatus") as LinkButton;
                
                    switch(e.Item.ItemIndex)
                    {
                    case 0:
                        lblStatus.Attributes.CssStyle.Add("background-color", "transparent");
                        lblStatus.Attributes.CssStyle.Add("border", "None");
                        lblStatus.Attributes.CssStyle.Add("color", "#DD6B55");
                        break;
                    case 1:
                        lblStatus.Attributes.CssStyle.Add("background-color", "transparent");
                        lblStatus.Attributes.CssStyle.Add("border", "None");
                        lblStatus.Attributes.CssStyle.Add("color", "#A5DC86");
                        break;
                    case 2:
                        lblStatus.Attributes.CssStyle.Add("background-color", "transparent");
                        lblStatus.Attributes.CssStyle.Add("border", "None");
                        lblStatus.Attributes.CssStyle.Add("color", "deepskyblue");
                        break;
                    }
                }catch
                {
                    
                }
                  

             
              
        }

    }
}
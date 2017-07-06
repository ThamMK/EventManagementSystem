using System;
using System.Collections;
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

                Event eve = new Event("TARUC Relax","12/06/2017","11.00","Dewan Utama","" ,"Seminar","~/Images/Event/event1.PNG","Tham Ming Keat","FREE");
                Event eve2 = new Event("TARUC Education Fait", "12/03/2017", "11.00", "Sport Compplex", "","Seminar","~/Images/Event/event2.PNG","Yew Wen Bin","RM100.00");

                List<Event> registeredEvent = new List<Event>();

                registeredEvent.Add(eve);
                registeredEvent.Add(eve2);

                Application["registeredEvent"] = registeredEvent;
               // System.Diagnostics.Debug.WriteLine(((List<Event>)Application["registeredEvent"])[0].eventName.ToString());
                
                Repeater1.DataSource = registeredEvent;
                Repeater1.DataBind();
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if(e.CommandName == "cancelEvent")
            {
                System.Diagnostics.Debug.WriteLine("button press : " + e.CommandArgument.ToString());
            }

            List<Event> eventlist = (List<Event>)Application["registeredEvent"];

            eventlist.RemoveAll(x => x.eventName == e.CommandArgument.ToString());

            if(eventlist.Count != 0) { 
                System.Diagnostics.Debug.WriteLine(((List<Event>)Application["registeredEvent"])[0].eventName.ToString());
            }
            
            Repeater1.DataSource = eventlist;
            Repeater1.DataBind();

            if(Repeater1.Items.Count < 1)
            {
                System.Diagnostics.Debug.WriteLine("No registered events");
            }

        }
    }
}
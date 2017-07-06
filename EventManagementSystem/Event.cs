using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventManagementSystem
{
    public partial class Event
    {
            public string eventName { set; get; }
            public string eventDate { set; get; }
            public string eventTime { set; get; }
            public string eventVenue { set; get; }
            public string description { set; get; }
            public string category { set; get; }
            public string imagePath { set; get; }
            public string eventOrganizer { set; get; }
            public string eventPrice { set; get; }

        public Event(string name, string date, string time, string venue,string description,string category,string imagepath,string organizer, string price)
            {
                this.eventName = name;
                this.eventDate = date;
                this.eventTime = time;
                this.eventVenue = venue;
                this.description = description;
                this.category = category;
                this.imagePath = imagepath;
                this.eventOrganizer = organizer;
                this.eventPrice = price;
                
            }
    }
}
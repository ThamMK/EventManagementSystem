using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EventManagementSystem
{
    public partial class Event
    {
        public string eventName { get; set; }
        public string eventStartDate { get; set; }
        public string eventEndDate { get; set; }
        public string eventStartTime { get; set; }
        public string eventEndTime { get; set; }
        public string eventVenue { get; set; }
        public string eventPrice { get; set; }
        public string eventCategory { get; set; }
        public string description { get; set; }
        public string eventOrganizer { get; set; }
        public string contactPerson { get; set; }
        public string imagePath { get; set; }
        public string eventStatus { get; set; }
        public string color { get; set; }

        public Event(string eventName,string eventStartDate, string eventEndDate,string eventStartTime, string eventEndTime,string eventVenue, string eventPrice, string eventCategory,string description,string eventOrganizer, string contactPerson, string imagePath)
        {
            this.eventName = eventName;
            this.eventStartDate = eventStartDate;
            this.eventEndDate = eventEndDate;
            this.eventStartTime = eventStartTime;
            this.eventEndTime = eventEndTime;
            this.eventVenue = eventVenue;
            this.eventPrice = eventPrice;
            this.eventCategory = eventCategory;
            this.description = description;
            this.eventOrganizer = eventOrganizer;
            this.contactPerson = contactPerson;
            this.imagePath = imagePath;
        }

        public Event(string eventName, string eventStartDate, string eventEndDate, string eventStartTime, string eventEndTime, string eventVenue, string eventPrice, string eventCategory, string description, string eventOrganizer, string contactPerson, string imagePath,string eventStatus)
        {
            this.eventName = eventName;
            this.eventStartDate = eventStartDate;
            this.eventEndDate = eventEndDate;
            this.eventStartTime = eventStartTime;
            this.eventEndTime = eventEndTime;
            this.eventVenue = eventVenue;
            this.eventPrice = eventPrice;
            this.eventCategory = eventCategory;
            this.description = description;
            this.eventOrganizer = eventOrganizer;
            this.contactPerson = contactPerson;
            this.imagePath = imagePath;
            this.eventStatus = eventStatus;
            if(eventStatus == "Disapproved")
            {
                this.color = "#DD6B55";
            } else if(eventStatus == "Approved")
            {
                this.color = "#A5DC86";
            }else if (eventStatus == "Pending")
            {
                this.color = "deepskyblue";
            }
        }
    }
}
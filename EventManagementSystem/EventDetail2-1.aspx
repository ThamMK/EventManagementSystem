<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/TestMaster.Master" CodeBehind="EventDetail2-1.aspx.cs" Inherits="EventManagementSystem.EventDetail2_1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head >
        <title></title>
        <link href="Scripts/bootstrap.css" rel="stylesheet" />
        <link href="Scripts/EventDetail2.css" rel="stylesheet" />
        <link href="Scripts/Navigation.css" rel="stylesheet" />
    <style>
        #logo {
            margin-left : 25px;
           
        }
    </style>
    </head>
    <body>
        <img alt="" class="img-event-detail" src="Images/Event/event2.PNG" />
        <div class="img-event-detail-overlay">
            <div class="img-event-detail-overlay-title">
                TARUC Open Day
            </div>
            <div class="img-event-detail-overlay-register">
                <input id="registerBtn" type="button" value="Register" />
                
                <input id="watchBtn" type="button" value="Watch Video" />
            </div>
            <div class="img-event-detail-overlay-details">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="event-detail-icon">
                            <img class="event-icon" src="Images/Event/ic_event_white_24dp_1x.png" />
                        </div>
                        <div class="event-detail-date-label event-label">
                            Date
                        </div>
                        <div class="event-detail-date">
                            24 Feb - 19 March, 2017
                        </div>
                        
                    </div>
                    <div class="col-sm-3">
                       <div class="event-detail-icon">
                            <img class="event-icon" src="Images/Event/ic_alarm_white_24dp_1x.png" />
                        </div>
                        <div class="event-detail-time-label event-label">
                            Time
                        </div>
                        <div class="event-detail-time">
                            9.00am - 5.00pm
                        </div>
                    </div>
                    <div class="col-sm-3">
                       <div class="event-detail-icon">
                            <img class="event-icon" src="Images/Event/ic_location_on_white_24dp_1x.png" />
                        </div>
                        <div class="event-detail-venue-label event-label">
                            Venue
                        </div>
                        <div class="event-detail-venue">
                            Sport Complex
                        </div>
                    </div>
                    <div class="col-sm-3">
                       <div class="event-detail-icon">
                            <img class="event-icon" src="Images/Event/ic_check_circle_white_24dp_1x.png" />
                        </div>
                        <div class="event-detail-category-label event-label">
                            Category
                        </div>
                        <div class="event-detail-category">
                            Business, Social
                        </div>
                    </div>
                </div>


            </div>
            <div class="event-detail-long">
                <h3>Description</h3>
Both rest of know draw fond post as. It agreement defective to excellent. Feebly do engage of narrow. Extensive repulsive belonging depending if promotion be zealously as. Preference inquietude ask now are dispatched led appearance. Small meant in so doubt hopes. Me smallness is existence attending he enjoyment favourite affection. Delivered is to ye belonging enjoyment preferred. Astonished and acceptance men two discretion. Law education recommend did objection how old. 
                <br /><br />
Abilities or he perfectly pretended so strangers be exquisite. Oh to another chamber pleased imagine do in. Went me rank at last loud shot an draw. Excellent so to no sincerity smallness. Removal request delight if on he we. Unaffected in we by apartments astonished to decisively themselves. Offended ten old consider speaking. 
                <br /><br />
Pleased him another was settled for. Moreover end horrible endeavor entrance any families. Income appear extent on of thrown in admire. Stanhill on we if vicinity material in. Saw him smallest you provided ecstatic supplied. Garret wanted expect remain as mr. Covered parlors concern we express in visited to do. Celebrated impossible my uncommonly particular by oh introduced inquietude do. 
            </div>
            <div class="event-detail-contact">
                <h3>Organizer</h3>
                Department of Student Affairs

                <br />

                <h3>Contact Number</h3>
                012-1112222

                <br />

                <h3>Email</h3>
                dsa@tarc.edu.my

                <input id="registerBtn2" type="button" value="Register" />
                <input id="watchBtn2" type="button" value="Watch Video" />
            </div>

        </div>
    </body>
    </html>
</asp:Content>
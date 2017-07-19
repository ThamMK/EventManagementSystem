<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventDetail2-2.aspx.cs" MasterPageFile="~/TestMaster.Master" Inherits="EventManagementSystem.EventDetail2_2" %>

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
                TARUC Education Fairs & Roadshows 2017
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
                            21 - 23 July 2017
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
                            10.00am - 7.00pm
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
                            College Hall
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
To sorry world an at do spoil along. Incommode he depending do frankness remainder to. Edward day almost active him friend thirty piqued. People as period twenty my extent as. Set was better abroad ham plenty secure had horses. Admiration has sir decisively excellence say everything inhabiting acceptance. Sooner settle add put you sudden him. 
                <br /><br />
Old education him departure any arranging one prevailed. Their end whole might began her. Behaved the comfort another fifteen eat. Partiality had his themselves ask pianoforte increasing discovered. So mr delay at since place whole above miles. He to observe conduct at detract because. Way ham unwilling not breakfast furniture explained perpetual. Or mr surrounded conviction so astonished literature. Songs to an blush woman be sorry young. We certain as removal attempt. 
                <br /><br />
Not far stuff she think the jokes. Going as by do known noise he wrote round leave. Warmly put branch people narrow see. Winding its waiting yet parlors married own feeling. Marry fruit do spite jokes an times. Whether at it unknown warrant herself winding if. Him same none name sake had post love. An busy feel form hand am up help. Parties it brother amongst an fortune of. Twenty behind wicket why age now itself ten. 
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
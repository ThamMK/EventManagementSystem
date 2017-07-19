    <%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/TestMaster.Master" CodeBehind="Homepage.aspx.cs" Inherits="EventManagementSystem.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="Scripts/bootstrap.css" rel="stylesheet" />
    <link href="Scripts/Homepage.css" rel="stylesheet" />
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="Scripts/Navigation.css" rel="stylesheet" />
    <style>
        #logo {
            margin-left : 25px;
           
        }
    </style>
        
</head>
<body>
<%--    <div class="img-overlay-text">
    <h1>Discover new experiences</h1>
    </div>
    <div class="img-overlay-text-detailed">
    <h1 style="margin-top:220px; margin-left: 27%; font-size:35px;">Join, Create and Manage Events</h1>

    </div>--%>

    <div class="img-main">
        <h1>Discover new experiences</h1>
        <h1 style="margin-top:100px; font-size:40px;">Join, Create and Manage Events</h1>
        <img alt="" class="img-main-top" src="Images/klccbackground.png" />
    </div>
    <div class="container-homepage">
    <div class="container">
        <h2>Latest Events</h2>
        <h4>Browse new events around you</h4>
        <div class="row">
            <div class="col-sm-4">
                <a href="EventDetail2.aspx">
                <div class="event-container">
                    <div class="event-desc-title">
                            Techniques to Relax Your Body & Mind
                    </div>
                    <div class="event-image-div">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl="\Images\Event\event1.png" />
                    </div>
                    <div class="event-desc-div">
                        <div class="event-desc-date">
                            Date : 24th July 2017
                        </div>

                        <div class="event-desc-time">
                            
                           Time : 8.00am - 10.00am
                        </div>
                        
                        <div class="event-desc-location"> 
                            Venue : Block ABC
                        </div>
                    </div>
                 </div>
                </a>
            </div>
            
            <div class="col-sm-4">
                <a href="EventDetail2-1.aspx">
                <div class="event-container">
                    <div class="event-desc-title">
                        TARUC Open Day
                    </div>
                    <div class="event-image-div">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl="\Images\Event\event2.png" />
                    </div>
                    <div class="event-desc-div">
                        <div class="event-desc-date">
                            Date : 24 Feb to 19 Mar 2017
                        </div>

                        <div class="event-desc-time">
                            Time : 9.00am - 5.00 pm
                            
                        </div>
                        
                        <div class="event-desc-location"> 
                            Venue : Sport Complex
                        </div>
                    </div>
                    </div>
                    </a>
            </div>
            
            <div class="col-sm-4">
                <a href="EventDetail2-2.aspx">
                <div class="event-container">
                    <div class="event-desc-title">
                        TARUC Education Fair 
                    </div>
                     <div class="event-image-div">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl="\Images\Event\event3.png" />
                    </div>
                  <div class="event-desc-div">
                        <div class="event-desc-date">
                            Date : 21-23rd July 2017
                        </div>

                        <div class="event-desc-time">
                            Time : 10.00am - 7.00 pm
                            
                        </div>
                        
                        <div class="event-desc-location"> 
                            Venue : College Hall
                        </div>
                    </div>
                </div>
                </a>
            </div>
            </div>

        <div class="row">
            <div class="col-sm-4">
                <div class="event-container">
                    <div class="event-desc-title">
                        CFA Prepatory Course
                    </div>
                    <div class="event-image-div">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl="\Images\Event\event4.png" />
                    </div>
                   <div class="event-desc-div">
                        <div class="event-desc-date">
                            Date : 1 August 2017
                        </div>

                        <div class="event-desc-time">
                            Time : 9.00am - 3.00 pm
                            
                        </div>
                        
                        <div class="event-desc-location"> 
                            Venue : Block D101
                        </div>
                    </div>
                 </div>
            </div>
            
            <div class="col-sm-4">
                <div class="event-container">
                    <div class="event-desc-title">
                        MUET Seminar
                    </div>
                    <div class="event-image-div">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl="\Images\Event\event5.png" />
                    </div>
                    <div class="event-desc-div">
                        <div class="event-desc-date">
                            Date : 5 August 2017
                        </div>

                        <div class="event-desc-time">
                            Time : 2.00pm - 4.00 pm
                            
                        </div>
                        
                        <div class="event-desc-location"> 
                            Venue : Block DK5
                        </div>
                    </div>
                    </div>
                </div>
            
            <div class="col-sm-4">
                <div class="event-container">
                    <div class="event-desc-title">
                        Body Fit Programme
                    </div>
                     <div class="event-image-div">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl="\Images\Event\event6.png" />
                    </div>
                    <div class="event-desc-div">
                        <div class="event-desc-date">
                            Date : 29 July 2017
                        </div>

                        <div class="event-desc-time">
                            Time : 10.00am - 2.00pm
                            
                        </div>
                        
                        <div class="event-desc-location"> 
                            Venue : Gym Room
                        </div>
                    </div>
                </div>
            </div>
            </div>

        <div class="row">
            <div class="col-sm-4">
                <div class="event-container">
                    <div class="event-desc-title">
                        TARCIAN RUN 2017
                    </div>
                    <div class="event-image-div">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl="\Images\Event\event7.png" />
                    </div>
                    <div class="event-desc-div">
                        <div class="event-desc-date">
                            Date : 13 August 2017
                        </div>

                        <div class="event-desc-time">
                            Time : 7.00am - 11.00 am
                            
                        </div>
                        
                        <div class="event-desc-location"> 
                            Venue : Football Field
                        </div>
                    </div>
                 </div>
            </div>
            
            <div class="col-sm-4">
                <div class="event-container">
                    <div class="event-desc-title">
                        Violin For Beginners
                    </div>
                    <div class="event-image-div">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl="\Images\Event\event8.png" />
                    </div>
                    <div class="event-desc-div">
                        <div class="event-desc-date">
                            Date : 24th July 2017
                        </div>

                        <div class="event-desc-time">
                            Time : 9.00am - 11.00 am
                            
                        </div>
                        
                        <div class="event-desc-location"> 
                            Venue : Block L3
                        </div>
                    </div>
                    </div>
                </div>
            
            <div class="col-sm-4">
                <div class="event-container">
                    <div class="event-desc-title">
                        Hair for Hope
                    </div>
                     <div class="event-image-div">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl="\Images\Event\event9.png" />
                    </div>
                    <div class="event-desc-div">
                        <div class="event-desc-date">
                            Date : 1 August 2017
                        </div>

                        <div class="event-desc-time">
                            Time : 9.00am - 5.00pm
                            
                        </div>
                        
                        <div class="event-desc-location"> 
                            Venue : College Hall
                        </div>
                    </div>
                </div>
            </div>
            </div>
            
            <h2 class="event-category-header" style="margin-top:100px;">Explore Event By Categories</h2>
            
                <div class="event-category-background">
                    <h4>Browse for events based on different categories </h4>
                <div class="row category-row">
                

                    <div class="col-sm-3">
                        <asp:Image runat="server" CssClass="event-image-category-logo" ImageUrl="\Images\Categories\business.png" />
                        <h6>Business</h6>
                        <figure class="tint">
                            <asp:Image runat="server" CssClass="event-image-category" ImageUrl="\Images\Categories\Background\business.jpg" />
                        </figure>
                    </div>
                    <div class="col-sm-3">
                        <asp:Image runat="server" CssClass="event-image-category-logo" ImageUrl="\Images\Categories\food.png" />
                        <h6>Food & Dining</h6>
                        <figure class="tint">
                            <asp:Image runat="server" CssClass="event-image-category" ImageUrl="\Images\Categories\Background\food.jpg" />
                        </figure>
                    </div>
                    <div class="col-sm-3">
                        <asp:Image runat="server" CssClass="event-image-category-logo" ImageUrl="\Images\Categories\music.png" />
                        <h6>Music</h6>
                        <figure class="tint">
                            <asp:Image runat="server" CssClass="event-image-category" ImageUrl="\Images\Categories\Background\music.jpg" />
                        </figure>
                    </div>
                    <div class="col-sm-3">
                        <asp:Image runat="server" CssClass="event-image-category-logo" ImageUrl="\Images\Categories\outdoor.png" />
                        <h6>Outdoor</h6>
                        <figure class="tint">
                            <asp:Image runat="server" CssClass="event-image-category" ImageUrl="\Images\Categories\Background\outdoor.jpg" />
                        </figure>
                    </div>
            </div>
            <div class="row category-row">
                

                <div class="col-sm-3">
                        <asp:Image runat="server" CssClass="event-image-category-logo" ImageUrl="\Images\Categories\seminar.png" />
                        <h6>Seminars & Talks</h6>
                        <figure class="tint">
                            <asp:Image runat="server" CssClass="event-image-category" ImageUrl="\Images\Categories\Background\seminar.jpg" />
                        </figure>
                </div>
                <div class="col-sm-3">
                        <asp:Image runat="server" CssClass="event-image-category-logo" ImageUrl="\Images\Categories\social.png" />
                        <h6>Social</h6>
                        <figure class="tint">
                            <asp:Image runat="server" CssClass="event-image-category" ImageUrl="\Images\Categories\Background\meetup.jpg" />
                        </figure>
                </div>
                <div class="col-sm-3">
                    
                     <asp:Image runat="server" CssClass="event-image-category-logo" ImageUrl="\Images\Categories\technology.png" />
                    <h6>Technology</h6>
                    <figure class="tint">
                            
                        <asp:Image runat="server" CssClass="event-image-category" ImageUrl="\Images\Categories\Background\technology.jpg" />
                    

                    </figure>
                </div>
                <div class="col-sm-3">
                    <asp:Image runat="server" CssClass="event-image-category-logo" ImageUrl="\Images\Categories\art.png" />
                    <h6>Art</h6>
                    <figure class="tint">
                            
                        <asp:Image runat="server" CssClass="event-image-category" ImageUrl="\Images\Categories\Background\art.jpg" />
                    

                    </figure>
                </div>
                </div>


        </div>
        </div>
    </div>
</body>
    

</html>
</asp:Content>
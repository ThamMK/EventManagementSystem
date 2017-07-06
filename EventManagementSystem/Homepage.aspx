<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainPage.Master" CodeBehind="Homepage.aspx.cs" Inherits="EventManagementSystem.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>

    <link href="Scripts/Homepage.css" rel="stylesheet" />
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script>

        $(document).ready(function () {
            $(".tint").hover(
                function () {
                    $(this).siblings(".event-image-category-logo").animate({ top: '100px' });
                    $(this).siblings("h6").css("visibility","visible");
                },

            function () {
                $(this).siblings(".event-image-category-logo").animate({ top: '125px' });
                $(this).siblings("h6").css("visibility", "hidden");
            }

            );




        });
    </script>

</head>
<body>
    
    <div class="container-homepage">
    <div class="container">
        <h2>Popular Events</h2>
        <div class="row">
            <div class="col-sm-4">
                <div class="event-container">
                    <div class="event-image-div">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl="\Images\Event\event1.png" />
                    </div>
                    <div class="event-desc-div">
                        <div class="event-desc-date">
                            Saturday, 24th July 2017
                        </div>
                        <div class="event-desc-title">
                            TARUC Final Exam
                        </div>
                        <div class="event-desc-location">
                            Block ABC
                            
                        </div>
                        
                        <div class="event-desc-category"> 
                            Event
                        </div>
                    </div>
                 </div>
            </div>
            
            <div class="col-sm-4">
                <div class="event-container">
                    <div class="event-image-div">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl="\Images\Event\event2.png" />
                    </div>
                    <div class="event-desc-div">
                        <div class="event-desc-date">
                            Saturday, 24th July 2017
                        </div>
                        <div class="event-desc-title">
                            TARUC Final Exam
                        </div>
                        <div class="event-desc-location">
                            Block ABC
                        </div>
                        <div class="event-desc-category"> 
                            Event
                        </div>
                    </div>
                    </div>
                </div>
            
            <div class="col-sm-4">
                <div class="event-container">
                     <div class="event-image-div">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl="\Images\Event\event3.png" />
                    </div>
                    <div class="event-desc-div">
                        <div class="event-desc-date">
                            Saturday, 24th July 2017
                        </div>
                        <div class="event-desc-title">
                            TARUC Final Exam
                        </div>
                        <div class="event-desc-location">
                            Block ABC
                        </div>
                        <div class="event-desc-category"> 
                            Event
                        </div>
                    </div>
                </div>
            </div>
            </div>

        <div class="row">
            <div class="col-sm-4">
                <div class="event-container">
                    <div class="event-image-div">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl="\Images\Event\event1.png" />
                    </div>
                    <div class="event-desc-div">
                        <div class="event-desc-date">
                            Saturday, 24th July 2017
                        </div>
                        <div class="event-desc-title">
                            TARUC Final Exam
                        </div>
                        <div class="event-desc-location">
                            Location : Block ABC
                        </div>
                        <div class="event-desc-category"> 
                            Category : Event
                        </div>
                    </div>
                 </div>
            </div>
            
            <div class="col-sm-4">
                <div class="event-container">
                    <div class="event-image-div">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl="\Images\Event\event2.png" />
                    </div>
                    <div class="event-desc-div">
                        <div class="event-desc-date">
                            Saturday, 24th July 2017
                        </div>
                        <div class="event-desc-title">
                            TARUC Final Exam
                        </div>
                        <div class="event-desc-location">
                            Location : Block ABC
                        </div>
                        <div class="event-desc-category"> 
                            Category : Event
                        </div>
                    </div>
                    </div>
                </div>
            
            <div class="col-sm-4">
                <div class="event-container">
                     <div class="event-image-div">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl="\Images\Event\event3.png" />
                    </div>
                    <div class="event-desc-div">
                        <div class="event-desc-date">
                            Saturday, 24th July 2017
                        </div>
                        <div class="event-desc-title">
                            TARUC Final Exam
                        </div>
                        <div class="event-desc-location">
                            Location : Block ABC
                        </div>
                        <div class="event-desc-category"> 
                            Category : Event
                        </div>
                    </div>
                </div>
            </div>
            </div>

        <div class="row">
            <div class="col-sm-4">
                <div class="event-container">
                    <div class="event-image-div">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl="\Images\Event\event1.png" />
                    </div>
                    <div class="event-desc-div">
                        <div class="event-desc-date">
                            Saturday, 24th July 2017
                        </div>
                        <div class="event-desc-title">
                            TARUC Final Exam
                        </div>
                        <div class="event-desc-location">
                            Block ABC
                            
                        </div>
                        
                        <div class="event-desc-category"> 
                            Event
                        </div>
                    </div>
                 </div>
            </div>
            
            <div class="col-sm-4">
                <div class="event-container">
                    <div class="event-image-div">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl="\Images\Event\event2.png" />
                    </div>
                    <div class="event-desc-div">
                        <div class="event-desc-date">
                            Saturday, 24th July 2017
                        </div>
                        <div class="event-desc-title">
                            TARUC Final Exam
                        </div>
                        <div class="event-desc-location">
                            Block ABC
                        </div>
                        <div class="event-desc-category"> 
                            Event
                        </div>
                    </div>
                    </div>
                </div>
            
            <div class="col-sm-4">
                <div class="event-container">
                     <div class="event-image-div">
                        <asp:Image runat="server" CssClass="event-image" ImageUrl="\Images\Event\event3.png" />
                    </div>
                    <div class="event-desc-div">
                        <div class="event-desc-date">
                            Saturday, 24th July 2017
                        </div>
                        <div class="event-desc-title">
                            TARUC Final Exam
                        </div>
                        <div class="event-desc-location">
                            Block ABC
                        </div>
                        <div class="event-desc-category"> 
                            Event
                        </div>
                    </div>
                </div>
            </div>
            </div>
            
            <h2 style="margin-top:100px;">Explore Event By Categories</h2>

                <div class="row">
                

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
            <div class="row">
                

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

                </div>
                </div>


        </div>
    </div>
</body>
</html>
</asp:Content>
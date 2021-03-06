﻿<head runat="server">
        <title>Experiments</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"/>

        <style>
            h2,th{
                text-align:center;
            }
            body{
                background:url(../../images/homepage/experimentsback.jpg) no-repeat right;
            }
            #table{
                margin:auto;
                width: 300px;
            }
            #table a{
                text-align:center
            }
        </style>

    </head>
    <body>
        <h2> Weekly Experiments - Story Utility</h2>
        <div id="table">
            <ul class="nav nav-stacked">
                <li><a href="#">Week 01 (Initial Setup)</a></li>
                <li><a href="../../story/index.htm?../experiments/week02-story.txt">Week - 02</a></li>
                <li><a href="../../story/index.htm?../experiments/week03-story.txt">Week - 03</a></li>
                <li><a href="../../story/index.htm?../experiments/week04-story.txt">Week - 04</a></li>
                <li><a href="../../story/index.htm?../experiments/week05-story.txt">Week - 05</a></li>
                <li><a href="../../story/index.htm?../experiments/week06-story.txt">Week - 06</a></li>
                <li><a href="../../story/index.htm?../experiments/week07-story.txt">Week - 07</a></li>
                <li><a href="../../story/index.htm?../experiments/week08-story.txt">Week - 08</a></li>
                <li><a href="../../story/index.htm?../experiments/week09-story.txt">Week - 09</a></li>
                <li><a href="../../story/index.htm?../experiments/week10-story.txt">Week - 10</a></li>
                <li><a href="../../story/index.htm?../experiments/week11-story.txt">Week - 11</a></li>
            </ul>
        </div>

        <hr />

        <!--<form id="form1" runat="server">
            <h2> Weekly Experiments - Direct Links </h2> 
        </form>
        <div>
            <table id="experiments" class="table  table-bordered">
                <tr>
                    <th>Week</th>
                    <th>Experiments</th>
                </tr>
                <tr>
                    <td>Week 1 (12th - 16th Jan)</td>
                    <td> Ramp-up: Setting up Environment</td>
                </tr>

                <tr>
                    <td>Week 2 (18th - 24th Jan)</td>
                    <td>
                        <p id="html"><b>HTML Experiments</b></p>
                        <ul>
                            <li><a href="html/000-SemanticElements.html" target="_blank">New Semantic Elements In HTML5</a></li>
                            <li><a href="html/001-Tables.html" target="_blank">Tables In HTML5 And Using Bootstrap to Style tables</a></li>
                        </ul>
                        <p id="css"><b>CSS Experiments</b></p>
                        <ul>
                            <li><a href="css/000-NavigationBar.htm" target="_blank">Navigation Bar Using CSS</a></li>
                            <li><a href="css/001-ResponsiveWeb.html" target="_blank">Responsive Web Design</a></li>
                            <li><a href="css/002-CSSTransitionsAndAnimations.htm" target="_blank">CSS3 Transitions And Animations</a></li>
                        </ul>
                    </td>

                </tr>
                <tr>
                    <td>Week 3 (25th - 31th Jan)</td>
                    <td>
                        <p id="javascript"><b>Javascript Experiments</b></p>
                        <ul>
                            <li><a href="javascript/000-JSFunctions.html" target="_blank">Basic Experiments Using Javascript</a></li>
                            <li><a href="javascript/001-slideshow.html" target="_blank">Slide-show of Images Using Javascript</a></li>
                        </ul>
                        <p id="jquery"><b>JQuery Experiments</b></p>
                        <ul>
                            <li><a href="javascript/002-jqueryShowHide.html" target="_blank">Showing and Hiding HTML Elements Using Jquery</a></li>
                            <li><a href="javascript/003-DraggableCats.html" target="_blank">Draggable Cats Using Jquery UI</a></li>
                        </ul>
                        <p id="homePageWork"><b>Home Page Work</b></p>
                        <ul>
                            <li><a href="javascript/004-HomePageWork.html" target="_blank"> Home-Page - Under Construction</a></li>
                        </ul>
                    </td>
                    
                </tr>

                <tr>
                    <td>Week 4 (1st - 7th Feb)</td>
                    <td>
                        <p id="jqueryUI"><b>More JQuery UI Experiments</b></p>
                        <ul>
                            <li><a href="jqueryUI/000-jqueryUIEffects.html" target="_blank">JQuery UI Effects</a></li>
                            <li><a href="jqueryUI/001-jqueryUIWidgets.html" target="_blank">JQuery UI Widgets</a></li>
                            <li><a href="jqueryUI/002-pagination.html" target="_blank">Pagination Using Jquery</a></li>
                        </ul>
                        <p id="webAPI"><b>Web API And JSON Experiments</b></p>
                        <ul>
                            <li><a href="API/000-webAPI.html" target="_blank">Web API and JSON Introduction</a></li>
                            <li><a href="API/001-geolocationAPI.html" target="_blank">Geo-location</a></li>
                        </ul>
                    </td>
                    
                </tr>
                
                <tr>
                    <td>Week 5 (8st - 15th Feb)</td>
                    <td>
                        <p id="APIexp"><b>More API Experiments</b></p>
                        <ul>
                            <li><a href="API/002-weatherAPI.html" target="_blank">Weather API - JSON</a></li>
                            <li><a href="API/003-musicAPI.html" target="_blank">Search Music - AJAX/JSON</a></li>
                            <li><a href="API/004-mapsAPI.html" target="_blank">Search Location: Google Maps API</a></li>
                        </ul>
                        <p id="angularExp"><b>Angular JS Experiments</b></p>
                        <ul>
                            <li><a href="Angular/000-introToAngularJs.html" target="_blank">Introduction To Angular JS</a></li>
                            <li><a href="Angular/001-localTimeAngularAPI.html" target="_blank">Search Local Time - Angular JS and API</a></li>
                        </ul>
                    </td>
                    
                </tr>

                <tr>
                    <td>Week 6 (16st - 23th Feb)</td>
                    <td>
                        <p id="Routing"><b>Angular JS Routing Experiments</b></p>
                        <ul>
                            <li><a href="AngularRouting/000-IntroToAngularRouting.html" target="_blank">Introduction To Angular JS Routing</a></li>
                            <li><a href="AngularRouting/001-FoodBuffet.html" target="_blank">Food Buffet</a></li>
                            <li><a href="AngularRouting/002-IntroToRouteParams.html" target="_blank">Using $routeParams To Pass Parameters Between Views</a></li>
                            <li><a href="AngularRouting/003-ToDoList.html" target="_blank">To-Do List Using Angular JS</a></li>
                            <li><a href="AngularRouting/004-AnimationsAndAngularJS.html" target="_blank">Animations In Angular JS: ng-animate</a></li>
                        </ul>
                    </td>
                    
                </tr>
                
                <tr>
                    <td>Week 07 (23rd Feb - 1st Mar)</td>
                    <td>
                        <p id="NodeJS"><b>Node JS And OpenShift</b></p>
                        <ul>
                            <li><a href="http://nodejs-cs5610abhi.rhcloud.com" target="_blank">Index Page: Node JS Experiments</a></li>
                        </ul>
                    </td>
                    
                </tr>
                
                <tr>
                    <td>Week 08 (2nd Mar - 8th Mar)</td>
                    <td>
                        <p id="MongoDB"><b>MongoDB And Open-Shift</b></p>
                        <ul>
                            <li><a href="http://mongonodejs-cs5610abhi.rhcloud.com" target="_blank">Index Page: MongoDB Experiments</a></li>
                        </ul>
                    </td>
                    
                </tr>
                            
            </table>
        </div>-->
    </body>
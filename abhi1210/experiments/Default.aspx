<head runat="server">
        <title>Experiments</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"/>

        <style>
            h2,th{
                text-align:center;
            }
            body{
                background:url(images/homepage/experimentsback.jpg) no-repeat right;
            }
        </style>

    </head>
    <body>
        <form id="form1" runat="server">
            <h2> Weekly Experiments </h2> 
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
                    </td>
                    
                </tr>
                            
            </table>
        </div>
    </body>
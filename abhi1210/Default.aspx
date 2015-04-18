    <%@ Page Language="C#" %>


<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset='utf-8' />

    <title>Abhimanyu Kulkarni</title>

    <script type="text/javascript" src="javascript/jquery/jquery-2.1.3.js"></script>
        <script type="text/javascript" src="javascript/jquery-ui-1.11.2.custom/jquery-ui.js"></script>
    <script src="javascript/homepage.js" ></script>
    <link rel="stylesheet" href="css/homepage.css" />
    <link href="javascript/jquery-ui-1.11.2.custom/jquery-ui.css" rel="stylesheet">
    <link rel="shortcut icon" href="images/homepage/ic_launcher.ico" />
</head>

    <body>
        
        <div class="container">
            
            <div id="sideMenuId" class="sideMenu">
                
                <ul class="cssNav">
                    <li><a href="sitestatistics/" target="_blank">SiteStatistics</a></li>
                    <li><a href="statistics/" target="_blank">Statistics</a></li>
                    <li><a href="source/" target="_blank">Source</a></li>
                    <li><a href="search/" target="_blank">Search</a></li>
                    <li><a href="searchtree/" target="_blank">SearchTree</a></li>
                    <li><a href="textview/" target="_blank">TextView</a></li>
                    <li><a href="filelist.aspx" target="_blank">FileList</a></li>
                    <li><a href="autofile.aspx" target="_blank">AutoFile</a></li>
                    <li><a href="images/autoimage.aspx" target="_blank">Images</a></li>
                    <li><a href="blog/" target="_blank">Blog</a></li>
                        
                    <!-- Adding link to experiments -->
                    <li><a href="http://healthygobbler-abhi1210cs5610.rhcloud.com/views/home/HomePage.html" target="_blank">Healthy Gobbler</a></li>
                    <li><a href="https://github.com/abhimanyu1210/HealthyGobbler/tree/master" target="_blank">Source Code</a></li>
                    <li><a href="./story/index.htm?../experiments/storyExp.txt" target="_blank">Experiments</a></li>
               </ul>
            </div>
        
            
            <div id="mainPageId" class="mainPage">
                <div id="menuDiv">
                    <img class="menuIcon" id="menuImg" src="#"/>
                                    
                </div>


                <div class="aboutMe">
                    
                    
                    <div class="imageDiv">
                        <img class="headshot" src="images/homepage/headshot2.jpg" />
                    </div>

                    <div class="textDiv">
                        <p id="text1">
                            <b>
                            Hello! My name is Abhimanyu Kulkarni and I am pursuing my Masters Degree in computer science at Northeastern University.
                            I was born and raised in India and NOOO!! I don't eat or like spicy food. <br />I am a strong enthusiast in the field of computers with an
                            undying zest of learning new technologies.When I am not coding, I like to watch and play soccer(#CFC).
                            </b>
                        </p>

                        <p id="text2">
                            <b>
                            This page is created as part of CS5610-Web Development course under Dr. Jose Annunziato. As part of the course work,
                            I have performed various <a href="./story/index.htm?../experiments/storyExp.txt" target="_blank">experiments</a> on web-development. Please feel free to browse around and provide any feedback you
                            may have.<br />
                            I have designed and developed a web-site called 'Healthy Gobbler' as part of the final semester project under this course. You can try it out here: <a href="http://healthygobbler-abhi1210cs5610.rhcloud.com/views/home/HomePage.html" target="_blank">Healthy Gobbler</a>
                            </b>

                        </p>
                    </div>
                </div>

                <div class="directLinks">
                    <div class="row-4 clearfix">
                        <div class="col-1-4">
                            <a href="./story/index.htm?../experiments/storyExp.txt" target="_blank">
                                <img id="expLink" src="images/homepage/experimentLink.jpg"/>
                            </a>
                            <div>&nbsp;</div>
                            <!--<label>Experiments</label>-->
                            <img class="nameClass" src="images/homepage/experiments_name.png"/>
                        </div>
                        <div class="col-1-4">
                            <a href="http://healthygobbler-abhi1210cs5610.rhcloud.com/views/home/HomePage.html" target="_blank">
                               <img id="projectLink" src="images/homepage/ic_launcher.png"/>
                            </a>
                            <div>&nbsp;</div>
                            <!--<label for="projectLink">Healthy Gobbler</label>-->
                            <img class="nameClass" src="images/homepage/gobblername.png"/>
                        </div>
                        <div class="col-1-4">
                            <a href="./story/index.htm?../Documentation/storyExp.txt" target="_blank">
                                <img id="docsLink" src="images/homepage/documentation.jpg"/>
                            </a>
                            <div>&nbsp;</div>
                            <!--<label>Project Documentation</label>-->
                            <img class="nameClass" src="images/homepage/projectDocs_name.png"/>
                        </div>
                        <div class="col-1-4">
                            <a href="https://github.com/abhimanyu1210/CS5610-abhi1210" target="_blank">
                                <img id="gitLink" src="images/homepage/github.jpg"/>
                            </a>
                            <div>&nbsp;</div>
                            <!--<label>Github</label>-->
                            <img class="nameClass" src="images/homepage/github_name.png"/>
                        </div>
                    </div>
                </div>

                
                <div>
                    <footer id="footer">
                        <p>Abhimanyu Kulkarni | Northeastern University | 2015</p>
                    </footer>  
                </div>
                <div class="links">
                    <a href="https://www.facebook.com/abhimanyu.kulkarni" target="_blank">
                        <img class="fbIcon" src="images/homepage/fbicon.jpg" />
                    </a>
                    <a href="http://www.linkedin.com/pub/abhimanyu-kulkarni/22/a21/187" target="_blank">
                        <img class="linkedIn" src="images/homepage/linkedInicon.jpg" />
                    </a>
                    <a href="https://plus.google.com/+AbhimanyuKulkarni-google/posts" target="_blank">
                        <img class="plusIcon" src="images/homepage/plus.jpg" />
                    </a>
                </div>
            </div>
        </div>
        
        <!-- Mobile Screen-->
        <div id="mobScreen">
            
            <div id="titleBar">    
                <div id="mobMenu">
                    <img id="mMenuImg" src="images/homepage/menuIcon.jpg"/>
                </div>
                <div id="mobMenuId">
                    <ul class="mobCssNav">
                        <li><a href="sitestatistics/" target="_blank">SiteStatistics</a></li>
                        <li><a href="statistics/" target="_blank">Statistics</a></li>
                        <li><a href="source/" target="_blank">Source</a></li>
                        <li><a href="search/" target="_blank">Search</a></li>
                        <li><a href="searchtree/" target="_blank">SearchTree</a></li>
                        <li><a href="textview/" target="_blank">TextView</a></li>
                        <li><a href="filelist.aspx" target="_blank">FileList</a></li>
                        <li><a href="autofile.aspx" target="_blank">AutoFile</a></li>
                        <li><a href="images/autoimage.aspx" target="_blank">Images</a></li>
                        <li><a href="blog/" target="_blank">Blog</a></li>      
                        <!-- Adding link to experiments -->
                        <li><a href="./story/index.htm?../experiments/storyExp.txt" target="_blank">Experiments</a></li>
                        <li><a href="./story/index.htm?../Documentation/storyExp.txt" target="_blank">Project Documentation</a></li>
                        <li><a href="http://healthygobbler-abhi1210cs5610.rhcloud.com/views/home/HomePage.html" target="_blank">Healthy Gobbler</a></li>
                    </ul>
                </div>
            </div>

            <div id="mobContainer">
                <h2>
                    <img class="headshot" src="images/homepage/headshot2.jpg" />
                </h2>
                <ul>
                    <li><a href="#tabs-1">About Me</a></li>
                    <li><a href="#tabs-2">Contact Me</a></li>
                </ul>
                <div id="tabs-1">
                    <p>
                        <b>
                        Hello! My name is Abhimanyu Kulkarni and I am pursuing my Masters Degree in computer science at Northeastern University.
                        I was born and raised in India and NOOO!! I don't eat or like spicy food. <br />I am a strong enthusiast in the field of computers with an
                        undying zest of learning new technologies.When I am not coding, I like to watch and play soccer(#CFC).
                        </b>
                    </p>

                    <p>
                        <b>
                        This page is created as part of CS5610-Web Development course under Dr. Jose Annunziato. As part of the course work,
                        I have performed various <a href="./story/index.htm?../experiments/storyExp.txt" target="_blank">experiments</a> on web-development. Please feel free to browse around and provide any feedback you
                        may have.
                        </b>
                    </p>
                </div>
                <div id="tabs-2">
                    <div id="contactMainDiv">
                        <h2 class="aboutHeader">
                            <span class="glyphicon glyphicon-envelope"></span>&nbsp; Contact
                        </h2>


                        <p>
                            <b>Abhimanyu Kulkarni</b><br />
                            Northeastern University<br />
                            360 Huntington Avenue<br />
                            Boston, MA - 02115.<br />
                            Email : <a href="mailto:kulkarni.abhi@husky.neu.edu">kulkarni.abhi@husky.neu.edu</a><br />
                            Phone : 1-617-834-9756
                        </p>

                        <iframe class="mapLocation"
                                width="600"
                                height="450"
                                src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDpUvdddaA3s-S5d-iP4mlJo9W_QHrYIzk&q=Northeastern+University+Boston&zoom=14"></iframe>
                        </div>
                    </div>
                </div>
            </div>        
    </body>
</html>

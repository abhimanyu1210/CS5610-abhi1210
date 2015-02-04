    <%@ Page Language="C#" %>


<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset='utf-8' />

    <title>Abhimanyu Kulkarni</title>

    <style type="text/css">
        ul.master_navigation
        {
            font-size: 100%;
            font-weight: bold;
            text-align: center;
            list-style: none;
            margin: 0.5em 0;
            padding: 0;
        }

        ul.master_navigation li
        {
            display: inline-block;
            padding: 0 0.5%;
        }

        a
        {
            color: #08f;
            font-weight: bold;
            text-decoration: none;
        }

        a:visited
        {
            color: #88f;
        }

        a:hover
        {
            color: #f00;
        }

        p
        {
            text-align: justify;
        }
    </style>

    <style type="text/css" media="screen">
        body {
            width:900px;
            max-width: 100%;
            margin: 0;
            padding: 0;
        }

        .pad {
            padding: 10px;
        }
    </style>

    <script type="text/javascript" src="../../../javascript/jquery/jquery-2.1.3.js"></script>
        <script type="text/javascript" src="../../../javascript/jquery-ui-1.11.2.custom/jquery-ui.js"></script>
    <script src="javascript/homepage.js" ></script>
    <link rel="stylesheet" href="css/homepage.css" />
</head>

    <body>
        
        <div class="container">
            
            <div id="sideMenuId" class="sideMenu">
                <p>Menu</p>
                
                <ul class="verNavClass">
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
                            may have.
                            </b>
                        </p>
                    </div>
                </div>

                <div class="directLinks">
                    <a href="experiments/Default.aspx" target="_blank">
                        <img id="expLink" src="images/homepage/experimentLink.jpg"/>
                    </a>
                    <a href="experiments/Default.aspx" target="_blank">
                        <img id="projectLink" src="images/homepage/projectLink.jpg"/>
                    </a>

                    <a href="experiments/Default.aspx" target="_blank">
                        <img id="docsLink" src="images/homepage/documentation.jpg"/>
                    </a>
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

                

                
                <footer id="footer">
                    <p>Abhimanyu Kulkarni | Northeastern University | 2015</p>
                </footer>   
            </div>
                           

        </div>
        
    </body>
</html>

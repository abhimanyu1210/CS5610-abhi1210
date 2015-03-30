<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Introduction To ASPX</title>
    <script src="js/angular.js" type="text/javascript"></script>
    <script src="js/angular-route.js" type="text/javascript"></script>
    <script src="js/jquery-2.1.3.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <script src="js/jquery-ui-1.11.2.custom/jquery-ui.js"></script>
    <link rel="stylesheet" href="css/jquery-ui.css" />
    <link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
    <header>
        <h1 style="text-align:center">Showing List Of Elements In A Table - ASPX</h1>
    </header>

    <hr />

    <h3>Description: </h3>
    <p>
        This experiment is an introduction to ASPX and displays a list of elements on the table. We have seen 
        how we can achieve this using ng-repeat with table-rows and displaying a list. In this experiment, we 
        display a list using the basic 'For' loop. The for loop is wrapped around the table body and table rows 
        such that it renders the table row "array.Length" number of times.<br />
        This experiment will be really useful to check the feasibility of using ASPX in final semester project
    </p>

    <h3>Experiment: </h3>
    <form id="form1" runat="server">
    <div class="container">
         <%
             string[] nutrients = { "Total Fat", "Potassium", "Vitamin A", "Vitmain C", "Iron" };
             string[] nutrients_vals = { "0%", "2%", "1%", "14%", "1%" };
         %>

        <h3 style="text-align:center">Apple's Nutrient Information<img style="width:80px;height:50px;margin:auto" src="images/apple.jpg" /></h3>
        <p>
            This table has a for loop wrapped around it which displays the information in the static array of nutrients and its values declared
            inside the code tags.
        </p>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Nutrient</th>
                    <th>Quantity per 100g</th>
                </tr>
            </thead>
            <tbody>
                <% for(int i = 0; i <nutrients.Length;i++ ){ %>
                <tr>
                    <td><%= nutrients[i] %></td>
                    <td><%= nutrients_vals[i] %></td>
                </tr>
                <%} %>
            </tbody>

        </table>

    </div>
    </form>

    <hr />
    <h3>Code Snippet:</h3>
    <div class="container">
        <h4>HTML</h4>
        <pre>
            &lt;form id="form2" runat="server"&gt;
            &lt;div class="container"&gt;
                    &lt;%
                        string[] nutrients = { "Total Fat", "Potassium", "Vitamin A", "Vitmain C", "Iron" };
                        string[] nutrients_vals = { "0%", "2%", "1%", "14%", "1%" };
                    %&gt;

                &lt;h3 style="text-align:center"&gt;Apple's Nutrient Information&lt;img style="width:80px;height:50px;margin:auto" src="images/apple.jpg" /&gt;&lt;/h3&gt;
        
                &lt;table class="table table-bordered"&gt;
                    &lt;thead&gt;
                        &lt;tr&gt;
                            &lt;th&gt;Nutrient&lt;/th&gt;
                            &lt;th&gt;Quantity per 100g&lt;/th&gt;
                        &lt;/tr&gt;
                    &lt;/thead&gt;
                    &lt;tbody&gt;
                        &lt;% for(int i = 0; i &lt;nutrients.Length;i++ ){ %&gt;
                        &lt;tr&gt;
                            &lt;td&gt;&lt;%= nutrients[i] %&gt;&lt;/td&gt;
                            &lt;td&gt;&lt;%= nutrients_vals[i] %&gt;&lt;/td&gt;
                        &lt;/tr&gt;
                        &lt;%} %&gt;
                    &lt;/tbody&gt;

                &lt;/table&gt;

            &lt;/div&gt;
            &lt;/form&gt;
        </pre>
    </div>

    <footer>
            <div>
                <h4>References</h4>
                <a href="https://www.youtube.com/watch?v=wFmg8bOkQy0" target="_blank">Professor's Lecture</a>
            </div>


            <div>
                <h4>Source Code:</h4>
                <a href="../../../fileview/Default.aspx?~/experiments/ASPXExperiments/000-IntroToASPX.aspx" target=" _blank">HTML</a><br />
            </div>
        </footer>
</body>
</html>

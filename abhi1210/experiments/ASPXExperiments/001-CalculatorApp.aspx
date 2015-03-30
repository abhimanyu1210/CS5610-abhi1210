<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    protected void add_click(object sender, EventArgs e){
        double a = Convert.ToDouble(numA.Text);
        double b = Convert.ToDouble(numB.Text);

        double result = a + b;

        resultId.Text = Convert.ToString(result);
    }

    protected void sub_click(object sender, EventArgs e)
    {
        double a = Convert.ToDouble(numA.Text);
        double b = Convert.ToDouble(numB.Text);

        double result = a - b;

        resultId.Text = Convert.ToString(result);
    }

    protected void mult_click(object sender, EventArgs e)
    {
        double a = Convert.ToDouble(numA.Text);
        double b = Convert.ToDouble(numB.Text);

        double result = a * b;

        resultId.Text = Convert.ToString(result);
    }

    protected void div_click(object sender, EventArgs e)
    {
        double a = Convert.ToDouble(numA.Text);
        double b = Convert.ToDouble(numB.Text);

        double result = a / b;

        resultId.Text = Convert.ToString(result);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator Using ASPX</title>
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
        <h1 style="text-align:center">Calculator App Using ASPX Components</h1>
    </header>

    <hr />

    <h3>Description: </h3>
    <p>
        This experiments uses ASPX components like TextBox, Button and Labels to programmatically perform mathematical operations
        on numbers. Id assigned to each component helps us to fetch its value in the code. The code then performs the calculation and sets the 
        result text to the result value.
    </p>

    <h3>Experiment: </h3>
    <form id="form1" runat="server">
    <div style="width:500px; margin:auto" class="container">
        

        <h3 style="text-align:center">Calculator Using ASPX Components<img style="width:80px;height:50px;margin:auto" src="images/calc.jpg" /></h3>

        <label>First Number:&nbsp;&nbsp;&nbsp;&nbsp;</label>
        <asp:TextBox ID="numA" runat="server"/><br /><br />

        <label>Second Number:</label>
        <asp:TextBox ID="numB" runat="server"/><br /><br />


        <asp:Button ID="addButton" runat="server" CssClass="btn btn-success" Text="Add" OnClick="add_click"/>
        <asp:Button ID="subButton" runat="server" CssClass="btn btn-success" Text="Subtract" OnClick="sub_click"/>
        <asp:Button ID="multButton" runat="server" CssClass="btn btn-success" Text="Multiply" OnClick="mult_click"/>
        <asp:Button ID="divideButton" runat="server" CssClass="btn btn-success" Text="Divide" OnClick="div_click"/>

        
        <br /><br />
        <div style="width:100px;margin:auto">
            <h4><strong>Result:</strong></h4>
            <asp:Label Font-Size="Large"  ID="resultId" runat="server"></asp:Label>
        </div>
    </div>
    </form>


    <hr />
    <h3>Code Snippet:</h3>
    <div class="container">
        <h4>C# Code </h4>
        <pre>
            protected void add_click(object sender, EventArgs e){
                double a = Convert.ToDouble(numA.Text);
                double b = Convert.ToDouble(numB.Text);

                double result = a + b;

                resultId.Text = Convert.ToString(result);
            }

            protected void sub_click(object sender, EventArgs e)
            {
                double a = Convert.ToDouble(numA.Text);
                double b = Convert.ToDouble(numB.Text);

                double result = a - b;

                resultId.Text = Convert.ToString(result);
            }

            protected void mult_click(object sender, EventArgs e)
            {
                double a = Convert.ToDouble(numA.Text);
                double b = Convert.ToDouble(numB.Text);

                double result = a * b;

                resultId.Text = Convert.ToString(result);
            }

            protected void div_click(object sender, EventArgs e)
            {
                double a = Convert.ToDouble(numA.Text);
                double b = Convert.ToDouble(numB.Text);

                double result = a / b;

                resultId.Text = Convert.ToString(result);
            }
        </pre>
    </div>

    <footer>
        <div>
            <h4>References</h4>
            <a href="https://www.youtube.com/watch?v=DbJkTo97YvA" target="_blank">Professor's Lecture(Friday)</a>
        </div>


        <div>
            <h4>Source Code:</h4>
            <a href="../../../fileview/Default.aspx?~/experiments/ASPXExperiments/001-CalculatorApp.aspx" target=" _blank">HTML</a><br />
        </div>
    </footer>
</body>
</html>

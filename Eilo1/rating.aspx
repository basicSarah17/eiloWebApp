<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rating.aspx.cs" Inherits="eiloWebApp.Eilo1.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
               <asp:Image ID="imgLogo" runat="server" Height="193px" ImageUrl="~/Eilo1/imglogo.jpg" Width="583px" style="margin-left: 282px" />
    <html lang="en">
<div>
     <asp:Label ID="Label1" runat="server" Text="Label"> <h1 style="background-color:lightgreen" >Eilo Website Survey</h1></asp:Label>
    </div>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diet Website Survey</title>
</head>
<body>
    <p>We value your feedback! Please take a moment to complete our survey:</p>
    <form action="submit_survey.php" method="post">
        <label for="q1">1. How satisfied are you with the information provided on our website?</label><br>
        <select id="q1" name="q1">
            <option value="very_satisfied">Very Satisfied</option>
            <option value="satisfied">Satisfied</option>
            <option value="neutral">Neutral</option>
            <option value="dissatisfied">Dissatisfied</option>
            <option value="very_dissatisfied">Very Dissatisfied</option>
        </select><br><br>
        
        <label for="q2">2. Did you find the website easy to navigate?</label><br>
        <input type="radio" id="q2_yes" name="q2" value="yes">
        <label for="q2_yes">Yes</label><br>
        <input type="radio" id="q2_no" name="q2" value="no">
        <label for="q2_no">No</label><br><br>

        <label for="q3">3. How likely are you to recommend our website to others?</label><br>
        <input type="radio" id="q3_likely" name="q3" value="likely">
        <label for="q3_likely">Likely</label><br>
        <input type="radio" id="q3_neutral" name="q3" value="neutral">
        <label for="q3_neutral">Neutral</label><br>
        <input type="radio" id="q3_unlikely" name="q3" value="unlikely">
        <label for="q3_unlikely">Unlikely</label><br><br>

        <label for="comments">Additional Comments:</label><br>
        <textarea id="comments" name="comments" rows="4" cols="50"></textarea><br><br>
    </form>

    <button onclick="Myfunction()">submit</button>

    <script>
        
            function Myfunction() {
                alert("Thank you for your Feedback ");
}
 
    </script>
</body>
</html>
</asp:Content>

<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="eiloWebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Image ID="imgLogo" runat="server" Height="193px" ImageUrl="~/Eilo1/imglogo.jpg" Width="583px" style="margin-left: 282px" />

    <div class="jumbotron" style= "background-color:lightgreen";
>
        <div style= font-family:'Lucida Handwriting';> 
        <h1>EILO</h1>
        </div>
        <p class="lead"> EILO: the Keto and Low-Carb Diet website provides comprehensive information about the benefits and effects of both dietary regimens, along with recipes and guidance for meal planning to achieve health goals.</p>
        <p><a style= "background-color: whitesmoke"; class="btn btn-default" href="https://calo.app/ar">Learn more &raquo;</a>
</p>

    </div>

    <div class="row">
        <div class="col-md-4">      
           <div style= font-family:'Lucida Handwriting';> 
            <h2>LOW CARB</h2>
              </div>

            <p>
              if you want to start with low carb diet:
            </p>
            <p>
                <a style= "background-color:lightgreen" class="btn btn-default" href="Eilo1/lowCarb.aspx"> Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <div style= font-family:'Lucida Handwriting';> 
            <h2>KETO</h2>
               </div>

            <p>
              if you want to start with Keto diet:
            </p>
            <p>
                <a style= "background-color:lightgreen" class="btn btn-default" href="Eilo1/keto.aspx"> Learn more &raquo;</a>
            </p>
        </div>
      
    </div>

</asp:Content>

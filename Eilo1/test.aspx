<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="eiloWebApp.Eilo1.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <asp:Image ID="imgLogo" runat="server" Height="193px" ImageUrl="~/Eilo1/imglogo.jpg" Width="583px" style="margin-left: 282px" />

        <br /><br />      <br /><br />
    <table border="0">
        <tr><td>    </td><td>  <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label></td></tr>
        <tr>
            <td style="height: 26px">From -Email</td>
            <td style="height: 26px">
                <asp:TextBox ID="txtSenderEmail" runat="server" Height="16px" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 26px">Subject
            </td>
            <td style="height: 26px">
                <asp:TextBox ID="txtSubject" runat="server" Width="450px" OnLoad="lblOutputClear_txtSubject"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>File Attachments:</td>
            <td>
               <asp:FileUpload ID="fuAttachment" runat="server"   Enabled="true"  
                   AllowMultiple="true" Width="449px" /></td>
        </tr>
        <tr>
            <td valign="top">Message
            </td>
            <td>
                <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Height="103px" 
                    Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td valign="top">&nbsp;</td>
            <td>
             
                <asp:Button ID="btnSendMailViaMailMgr" runat="server" 
                    OnClick="btnSendMailViaMailMgr_Click" Text="Send " />
             
                <asp:Button ID="btnSendViaCode" runat="server"  Text="Send email via Code" OnClick="btnSendViaCode_Click" />
             
            </td>
        </tr>
    </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="sendEmail.aspx.cs" Inherits="eiloWebApp.Eilo1.sendEmail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <asp:Image ID="imgLogo" runat="server" Height="193px" ImageUrl="~/Eilo1/imglogo.jpg" Width="583px" style="margin-left: 282px" />

    <div>
                        <asp:Label ID="Label1" runat="server" Text="Label"> <h1 style="background-color:lightgreen" >Want to tell us somthing?</h1></asp:Label>
                <br /><br />      <br /><br />

        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>

    </div>
    <table border="0">
        <tr><td>    </td><td>  </td></tr>
        <tr>
            <td style="height: 26px"><strong><span style="background-color: #CCFFCC">From -Email</span></strong></td>
            <td style="height: 26px">
                <strong>
                <asp:TextBox ID="txtSenderEmail" runat="server" Height="16px" Width="450px" OnTextChanged="txtSenderEmail_TextChanged" style="background-color: #CCFFCC"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td style="height: 26px"><strong><span style="background-color: #CCFFCC">Subject
            </span></strong>
            </td>
            <td style="height: 26px">
                <strong>
                <asp:TextBox ID="txtSubject" runat="server" Width="450px" OnLoad="lblOutputClear_txtSubject" style="background-color: #CCFFCC"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td><strong><span style="background-color: #CCFFCC">File Attachments:</span></strong></td>
            <td>
               <asp:FileUpload ID="fuAttachment" runat="server"   Enabled="true"  
                   AllowMultiple="true" Width="449px" /></td>
        </tr>
        <tr>
            <td valign="top"><strong><span style="background-color: #CCFFCC">Message
            </span></strong>
            </td>
            <td>
                <strong>
                <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Height="103px" 
                    Width="450px" style="background-color: #CCFFCC"></asp:TextBox>
                </strong>
            </td>
        </tr>
        <tr>
            <td valign="top">&nbsp;</td>
            <td>
             
                <strong>
             
                <asp:Button ID="btnSendMailViaMailMgr" runat="server" 
                    OnClick="btnSendMailViaMailMgr_Click" Text="Send " style="font-weight: bold" />
             
                <asp:Button ID="btnSendViaCode" runat="server"  Text="Send email via Code" OnClick="btnSendViaCode_Click" style="font-weight: bold" />
             
                </strong>
             
            </td>
        </tr>
    </table>

</asp:Content>

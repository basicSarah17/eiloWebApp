<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="eiloWebApp.Eilo1.Information"EnableEventValidation="false" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Image ID="imgLogo" runat="server" Height="193px" ImageUrl="~/Eilo1/imglogo.jpg" Width="583px" style="margin-left: 282px" />

<br /><br />
        <div style="background-color:#FFEFD5">

    <h3 class="text-center" style="color: #4F4F4F"><strong>Welcome Welcome to our Website enter your Information below: </strong> </h3>

        <br />
        <table class="nav-justified">
            <tr>
                <td id="lblOutput" colspan="2" class="text-center">
                <asp:Label ID="lblOutput" runat="server"></asp:Label>

                </td>
            </tr>
            <tr>
                <td id="lblUserId" style="height: 20px; background-color: #CCFFCC;" class="text-right">
                    <br style="color: #CCFFCC" />
                    <asp:Label ID="lblClientId" runat="server" Text="clientId" style="font-size: large; color: #4F4F4F;"></asp:Label>
                </td>
                <td style="height: 20px; background-color: #CCFFCC;" class="text-left">
                    <asp:TextBox ID="txtClientId" runat="server" style="font-size: large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-right" style="background-color: #CCFFCC">
                    <asp:Label ID="lblClientFName" runat="server" Text="First Name" style="font-size: large; color: #4F4F4F;"></asp:Label>
                </td>
                <td class="text-left" style="background-color: #CCFFCC">
                    <asp:TextBox ID="txtClientFName" runat="server" style="font-size: large" TabIndex="1" BackColor="#CCFF99"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-right" style="background-color: #CCFFCC">
                    <asp:Label ID="lblClientLName" runat="server" Text="Last Name" style="font-size: large; color: #4F4F4F;"></asp:Label>
                </td>
                <td class="text-left" style="background-color: #CCFFCC">
                    <asp:TextBox ID="txtClientLName" runat="server" style="font-size: large" TabIndex="2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-right" style="background-color: #CCFFCC">
                    <asp:Label ID="lblClientAge" runat="server" Text="Age" style="font-size: large; color: #4F4F4F;"></asp:Label>
                </td>
                <td class="text-left" style="background-color: #CCFFCC">
                    <asp:TextBox ID="txtClientAge" runat="server" style="font-size: large" TabIndex="3"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 22px; background-color: #CCFFCC;" class="text-right">
                    <asp:Label ID="lblClientGender" runat="server" Text="Gender" style="font-size: large; color: #4F4F4F;"></asp:Label>
                </td>
                <td style="height: 22px; background-color: #CCFFCC;" class="text-left">
                    <asp:DropDownList ID="ddlClientGender" runat="server" style="font-size: large" >
                    </asp:DropDownList>
                    
                    
                    
                </td>
            </tr>
            <tr>
                <td class="text-right" style="background-color: #CCFFCC">
                    <asp:Label ID="lblClientCell" runat="server" Text="Cell" style="font-size: large; color: #4F4F4F;"></asp:Label>
                </td>
                <td class="text-left" style="background-color: #CCFFCC">
                    <asp:TextBox ID="txtClientCell" runat="server" style="font-size: large" TabIndex="5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-right" style="height: 22px; background-color: #CCFFCC;">
                    <asp:Label ID="lblClientEmail" runat="server" Text="Email" style="font-size: large; color: #4F4F4F;"></asp:Label>
                </td>
                <td class="text-left" style="height: 22px; background-color: #CCFFCC;">
                    <asp:TextBox ID="txtClientEmail" runat="server" style="font-size: large" TabIndex="6"></asp:TextBox>
                    <strong>
                    <asp:Label ID="lblOutput2" runat="server" style="font-size: small"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="text-right" style="background-color: #CCFFCC">
                    <asp:Label ID="lblClientLength" runat="server" Text="Length" style="font-size: large; color: #4F4F4F;"></asp:Label>
                </td>
                <td class="text-left" style="background-color: #CCFFCC">
                    <asp:TextBox ID="txtClientLength" runat="server" style="font-size: large" TabIndex="7"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-right" style="background-color: #CCFFCC">
                    <asp:Label ID="lblClientWeight" runat="server" Text="Weight" style="font-size: large; color: #4F4F4F;"></asp:Label>
                </td>
                <td class="text-left" style="background-color: #CCFFCC">
                    <asp:TextBox ID="txtClientWeight" runat="server" style="font-size: large" TabIndex="8"></asp:TextBox>
                    <strong>
                    <asp:Label ID="lblOutput1" runat="server" style="font-size: small"></asp:Label>
                    </strong>
                    <br />
                </td>
            </tr>
            <br /><br />
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnInsert" runat="server" Text="Insert" style="font-size: large; background-color:#CCFFCC; color: #4F4F4F;" OnClick="btnInsert_Click"  />
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" style="font-size: large; background-color:#CCFFCC; color: #4F4F4F;" OnClick="btnUpdate_Click"  />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" style="font-size: large; background-color:#CCFFCC; color: #4F4F4F;" OnClick="btnDelete_Click"  OnClientClick="return confirm('Are you Sure you want to Delete?')" />
                    <asp:Button ID="btnSelect" runat="server" Text="Select" style="font-size: large; background-color:#CCFFCC; color: #4F4F4F;" OnClick="btnSelect_Click"   />
                    <asp:Button ID="btnExport" runat="server" Text="Export" style="font-size: large; background-color:#CCFFCC; color: #4F4F4F;" OnClick="btnExport_Click" EnableEventValidation="true" ValidateRequest="true" />
                    <br />
                </td>
            </tr>
        </table>
                        <br /><br />
    </div>
    <div style="background-color:#FFEFD5; padding-left:40px" class="text-center"  >
        <asp:GridView ID="gvClient" runat="server" AutoGenerateColumns="False" DataKeyNames="clientID" OnSelectedIndexChanged="gvClient_SelectedIndexChanged"  style="background-color:whitesmoke" >
            <Columns>
                 <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="clientID">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkupdate" runat="server"  
                                        CommandArgument='<%# Bind("clientID") %>' OnClick="populateForm_Click"
                                        Text='<%# Eval("clientID")  %>'></asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="left"></ItemStyle>
                            </asp:TemplateField>

                <asp:BoundField DataField="clientFName" HeaderText="clientFName" SortExpression="clientFName" />
                <asp:BoundField DataField="clientLName" HeaderText="clientLName" SortExpression="clientLName" />
                <asp:BoundField DataField="clientAge" HeaderText="clientAge" SortExpression="clientAge" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="clientCell" HeaderText="clientCell" SortExpression="clientCell" />
                <asp:BoundField DataField="clientEmail" HeaderText="clientEmail" SortExpression="clientEmail" />
                <asp:BoundField DataField="clientLength" HeaderText="clientLength" SortExpression="clientLength" />
                <asp:BoundField DataField="clientWeight" HeaderText="clientWeight" SortExpression="clientWeight" />
            </Columns>
        </asp:GridView>
                        <br /><br />

    </div>

</asp:Content>

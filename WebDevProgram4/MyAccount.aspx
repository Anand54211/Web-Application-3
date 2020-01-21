<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="WebDevProgram4.MyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 98%;
        }
        .auto-style3 {
            width: 159px;
            text-align: right;
        }
        .auto-style4 {
            width: 159px;
            height: 29px;
            text-align: right;
        }
        .auto-style6 {
            width: 239px;
            text-align: left;
        }
        .auto-style7 {
            height: 29px;
            width: 239px;
            text-align: left;
        }
        .auto-style8 {
            width: 239px;
        }
        .auto-style9 {
            width: 209px;
            text-align: left;
        }
        .auto-style10 {
            height: 29px;
            width: 209px;
            text-align: left;
        }
        .auto-style11 {
            width: 209px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p>
    </p>
     <asp:SqlDataSource ID="SqlDataUsers" runat="server" ConnectionString="<%$ ConnectionStrings:c432019sp01srinivasanaConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
         <asp:Label ID="Lblmessage" runat="server" Text=""></asp:Label>
         <br \ />
         <table class="auto-style2" id="table1" runat ="server">
             <tr>
                <td class="auto-style3">
        <asp:Label ID="LblUsername" runat="server" Text="Username:" CssClass="Label"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="LblUser" runat="server" Width="200px"></asp:Label>
                </td>
                 <td>&nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                <td class="auto-style3">
        <asp:Label ID="LblPassword" runat="server" Text="Password:" CssClass="Label"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="LblOldPass" runat="server" Text=""></asp:Label>
                </td>
                 <td>
                     <asp:Label ID="LblNew" runat="server" CssClass="Label" Text="New:"></asp:Label>
                 </td>
                <td class="auto-style6"><asp:TextBox ID="TxtUpdatePassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:Button ID="BtnUpdatePass" runat="server" OnClick="BtnUpdatePass_Click" Text="Update Password" Width="170px" />
                </td>
                 <td>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtUpdatePassword" CssClass="auto-style8" ErrorMessage="RegularExpressionValidator" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,15}$">Check Password Requirement</asp:RegularExpressionValidator>
                 </td>
             </tr>
             <tr>
                <td class="auto-style4">
        <asp:Label ID="LblLastname" runat="server" Text="Lastname:" CssClass="Label"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="LblOldLastname" runat="server" Text=""></asp:Label>
                </td>
                 <td>
                     <asp:Label ID="LblNew1" runat="server" CssClass="Label" Text="New:"></asp:Label>
                 </td>
                <td class="auto-style7"><asp:TextBox ID="TxtUpdateLastname" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:Button ID="BtnUpdateLname" runat="server" OnClick="BtnUpdateLname_Click" Text="Update Lastname" Width="170px" />
                </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                <td class="auto-style4">
        <asp:Label ID="LblFirstname" runat="server" Text="Firstname:" CssClass="Label"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="LblOldFirstname" runat="server" Text=""></asp:Label>
                </td>
                 <td>
                     <asp:Label ID="LblNew2" runat="server" CssClass="Label" Text="New:"></asp:Label>
                 </td>
                <td class="auto-style7"><asp:TextBox ID="TxtUpdateFirstname" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:Button ID="BtnUpdateFname" runat="server" OnClick="BtnUpdateFname_Click" Text="Update Firstname" Width="170px" />
                </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                <td class="auto-style3">
        <asp:Label ID="LblAddress" runat="server" Text="Address:" CssClass="Label"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="LblOldAddress" runat="server" Text=""></asp:Label>
                </td>
                 <td>
                     <asp:Label ID="LblNew3" runat="server" CssClass="Label" Text="New:"></asp:Label>
                 </td>
                <td class="auto-style6"><asp:TextBox ID="TxtUpdateAddress" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:Button ID="BtnUpdateAddress" runat="server" OnClick="BtnUpdateAddress_Click" Text="Update Address" Width="170px" />
                </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                <td class="auto-style3">
        <asp:Label ID="LblBirthdate" runat="server" Text="Birthdate:" CssClass="Label"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="LblOldBirthdate" runat="server" Text=""></asp:Label>
                </td>
                 <td>
                     <asp:Label ID="LblNew4" runat="server" CssClass="Label" Text="New:"></asp:Label>
                 </td>
                <td class="auto-style6"><asp:TextBox ID="TxtUpdateBirthdate" runat="server" TextMode="Date" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:Button ID="BtnUpdateBirthdate" runat="server" OnClick="BtnUpdateBirthdate_Click" Text="Update Birthdate" Width="170px" />
                </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                <td class="auto-style3">
        <asp:Label ID="LblPhone" runat="server" Text="Phone:" CssClass="Label"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="LblOldPhone" runat="server" Text=""></asp:Label>
                </td>
                 <td>
                     <asp:Label ID="LblNew5" runat="server" CssClass="Label" Text="New:"></asp:Label>
                 </td>
                <td class="auto-style6"><asp:TextBox ID="TxtUpdatePhone" runat="server" MaxLength="10" TextMode="Phone" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:Button ID="BtnUpdatePhone" runat="server" OnClick="BtnUpdatePhone_Click" Text="Update Phone" Width="170px" />
                </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td class="auto-style8">
                     &nbsp;</td>
                 <td>&nbsp;</td>
                 <td class="auto-style8">
                     &nbsp;</td>
                 <td class="auto-style11">
                     &nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
         </table>
     <asp:Label ID="lblErrorMessage" runat="server" Text=""></asp:Label>
     <br />
     
</asp:Content>

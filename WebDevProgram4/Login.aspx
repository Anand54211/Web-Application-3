<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebDevProgram4.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 87%;
        }
        .auto-style3 {
            width: 240px;
            text-align: right;
        }
        .auto-style4 {
            width: 426px;
        }
        .auto-style5 {
            width: 240px;
            height: 29px;
            text-align: right;
        }
        .auto-style6 {
            width: 426px;
            height: 29px;
        }
        .auto-style7 {
            height: 29px;
        }
        .auto-style8 {
            width: 426px;
            text-align: left;
            height: 28px;
        }
        .auto-style9 {
            width: 240px;
            text-align: right;
            height: 28px;
        }
        .auto-style10 {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p>
         <asp:SqlDataSource ID="SqlDataUsers" runat="server" ConnectionString="<%$ ConnectionStrings:c432019sp01srinivasanaConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
         <br />
&nbsp;<br />
&nbsp;&nbsp;
    <br />
         <table class="auto-style2">
             <tr>
                 <td class="auto-style5">
    <asp:Label ID="LblLogin" runat="server" Text="Username:" CssClass="Label"></asp:Label>
                 </td>
                 <td class="auto-style6"><asp:TextBox ID="TxtLogin" runat="server" Width="200px"></asp:TextBox>
                 </td>
                 <td class="auto-style7"></td>
             </tr>
             <tr>
                 <td class="auto-style3">
    <asp:Label ID="LblPass" runat="server" Text="Password:" CssClass="Label"></asp:Label>
                 </td>
                 <td class="auto-style4"><asp:TextBox ID="TxtPass" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style9">

         <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" />
                 </td>
                 <td class="auto-style8"><asp:Button ID="BtnLogout" runat="server" Text="Logout" OnClick="BtnLogout_Click" Visible="False" />
                 </td>
                 <td class="auto-style10"></td>
             </tr>
             <tr>
                 <td class="auto-style9">
                     &nbsp;</td>
                 <td class="auto-style8">
                     <asp:Button ID="BtnAccount" runat="server" OnClick="BtnAccount_Click" Text="My Account" />
                 </td>
                 <td class="auto-style10">&nbsp;</td>
             </tr>
         </table>
                     <asp:Label ID="LblMessage" runat="server"></asp:Label>
    <br />

&nbsp;<br />

 </p>
</asp:Content>

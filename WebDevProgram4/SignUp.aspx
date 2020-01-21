<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebDevProgram4.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 95%;
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
        .auto-style5 {
            height: 29px;
        }
        .auto-style6 {
            width: 186px;
            text-align: left;
        }
        .auto-style7 {
            height: 29px;
            width: 186px;
            text-align: left;
        }
        .auto-style8 {
            color: red;
            font-size: medium;
        }
        .auto-style9 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataUsers" runat="server" ConnectionString="<%$ ConnectionStrings:c432019sp01srinivasanaConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>

    &nbsp;<br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">
        <asp:Label ID="LblUsername" runat="server" Text="Username:" CssClass="Label"></asp:Label>
                </td>
                <td class="auto-style6"><asp:TextBox ID="TxtUsername" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtUsername" CssClass="auto-style8" ErrorMessage="User Name Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="LblPassword" runat="server" Text="Password:" CssClass="Label"></asp:Label>
                </td>
                <td class="auto-style6"><asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPassword" CssClass="auto-style8" ErrorMessage="Password Required!"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtPassword" CssClass="auto-style8" ErrorMessage="RegularExpressionValidator" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,15}$">At least 8 characters  and one uppercase character, one digit, and one special character. </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Label ID="LblLastname" runat="server" Text="Lastname:" CssClass="Label"></asp:Label>
                </td>
                <td class="auto-style7"><asp:TextBox ID="TxtLastname" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style5">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtLastname" CssClass="auto-style8" ErrorMessage="Last Name Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Label ID="LblFirstname" runat="server" Text="Firstname:" CssClass="Label"></asp:Label>
                </td>
                <td class="auto-style7"><asp:TextBox ID="TxtFirstname" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style5">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtFirstname" CssClass="auto-style8" ErrorMessage="First Name Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="LblAddress" runat="server" Text="Address:" CssClass="Label"></asp:Label>
                </td>
                <td class="auto-style6"><asp:TextBox ID="TxtAddress" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="LblBirthdate" runat="server" Text="Birthdate:" CssClass="Label"></asp:Label>
                </td>
                <td class="auto-style6"><asp:TextBox ID="TxtBirthdate" runat="server" TextMode="Date" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="LblPhone" runat="server" Text="Phone:" CssClass="Label"></asp:Label>
                </td>
                <td class="auto-style6"><asp:TextBox ID="TxtPhone" runat="server" MaxLength="10" TextMode="Phone" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:Button ID="BtnSignup" runat="server" Text="Sign Up" OnClick="BtnSignup_Click" />
        <br />

        <asp:Label ID="lblErrorMessage" runat="server"></asp:Label>

    </p>
</asp:Content>

<%@ Page Title="" Language="VB" MasterPageFile="~/Donation.master" AutoEventWireup="false" CodeFile="first_login.aspx.vb" Inherits="first_login" %>
<%@ MasterType VirtualPath ="~/Donation.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style11 {
            height: 31px;
        }
        .auto-style12 {
            height: 31px;
            width: 156px;
        }
        .auto-style13 {
            width: 156px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCPH" Runat="Server">

    <table class="auto-style10">
        <tr>
            <td class="auto-style12">UserName :</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Password:</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td>
                <asp:Button ID="btnLogin" runat="server" Text="Log In" />
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td>
                <asp:LinkButton ID="lbRegister" runat="server">Register</asp:LinkButton>
            </td>
        </tr>
    </table>

</asp:Content>


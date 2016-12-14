<%@ Page Title="" Language="VB" MasterPageFile="~/Donation.master" AutoEventWireup="false" CodeFile="success.aspx.vb" Inherits="success" %>
<%@ MasterType VirtualPath ="~/Donation.master"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style11 {
            width: 182px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCPH" Runat="Server">

    <table class="auto-style10">
        <tr>
            <td class="auto-style11">Username:</td>
            <td>
                <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Password:</td>
            <td>
                <asp:Label ID="lblPass" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">SessionID:</td>
            <td>
                <asp:Label ID="lblSessionID" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>


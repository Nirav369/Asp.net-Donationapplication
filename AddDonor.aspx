<%@ Page Title="" Language="VB" MasterPageFile="~/Donation.master" AutoEventWireup="false" CodeFile="AddDonor.aspx.vb" Inherits="AddDonor" %>
<%@ MasterType VirtualPath="~/donation.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            width: 138px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCPH" Runat="Server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style11">First Name</td>
            <td>
                <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Last Name</td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Affiliation</td>
            <td>
                <asp:DropDownList ID="ddlAddAffiliation" runat="server">
                    <asp:ListItem Value="NA">Please Select the Affiliation</asp:ListItem>
                    <asp:ListItem Value="AL">Alumni</asp:ListItem>
                    <asp:ListItem Value="FR">Friend</asp:ListItem>
                    <asp:ListItem Value="PR">Parent</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Username</td>
            <td>
                <asp:TextBox ID="txtAddUsername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Password</td>
            <td>
                <asp:TextBox ID="txtAddPassword" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">User Level</td>
            <td>
                <asp:DropDownList ID="ddlAddLevel" runat="server">
                    <asp:ListItem Value="0">Please Select the level</asp:ListItem>
                    <asp:ListItem Value="1">Administrator</asp:ListItem>
                    <asp:ListItem Value="2">End User</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:Button ID="btnAddDonor" runat="server" Text="Add Donor" />
            </td>
        </tr>
    </table>
    <br />
    <asp:Label ID="lblError" runat="server"></asp:Label>
</asp:Content>


<%@ Page Title="" Language="VB" MasterPageFile="~/Donation.master" AutoEventWireup="false" CodeFile="donor_history.aspx.vb" Inherits="donor_history" %>
<%@ MasterType VirtualPath="~/donation.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCPH" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="donorid" DataSourceID="dsdDonorList">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="donorid" DataNavigateUrlFormatString="~/donation_list.aspx?did={0}" DataTextField="fullname" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="dsdDonorList" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_SS16_pardiwalanConnectionString %>" SelectCommand="SELECT donor_lname + ', ' + donor_fname AS fullname, donorid FROM donor"></asp:SqlDataSource>
</asp:Content>


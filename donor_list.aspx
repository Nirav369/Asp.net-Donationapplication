<%@ Page Title="" Language="VB" MasterPageFile="~/Donation.master" AutoEventWireup="false" CodeFile="donor_list.aspx.vb" Inherits="donor_list" %>
<%@ MasterType VirtualPath="~/donation.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCPH" Runat="Server">
    <asp:Label ID="lblAffiliation" runat="server" Font-Size="Large" Text="Please Select the Affiliation:"></asp:Label>
    <asp:DropDownList ID="ddlAffiliation" runat="server" AutoPostBack="True" DataSourceID="sdsAffiliation" DataTextField="affiliation_desc" DataValueField="affiliation">
    </asp:DropDownList>
    <asp:SqlDataSource ID="sdsAffiliation" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_SS16_pardiwalanConnectionString %>" SelectCommand="SELECT [affiliation], [affiliation_desc] FROM [affiliation_code]"></asp:SqlDataSource>
    <asp:DataList ID="dlistAffiliation" runat="server" DataKeyField="donorid" DataSourceID="sdsAffiationList">
        <AlternatingItemStyle BackColor="#E0E0E0" />
        <AlternatingItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("donorid") %>'></asp:Label>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("donor_lname") %>'></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("donor_fname") %>'></asp:Label>
        </AlternatingItemTemplate>
        <ItemTemplate>
            donorid:
            <asp:Label ID="donoridLabel" runat="server" Text='<%# Eval("donorid") %>' />
            <br />
            donor_lname:
            <asp:Label ID="donor_lnameLabel" runat="server" Text='<%# Eval("donor_lname") %>' />
            <br />
            donor_fname:
            <asp:Label ID="donor_fnameLabel" runat="server" Text='<%# Eval("donor_fname") %>' />
            <br />
<br />
        </ItemTemplate>
        <SeparatorTemplate>
            <hr />
        </SeparatorTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="sdsAffiationList" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_SS16_pardiwalanConnectionString %>" SelectCommand="SELECT [donorid], [donor_lname], [donor_fname] FROM [donor] WHERE ([affiliation] = @affiliation)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlAffiliation" Name="affiliation" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>


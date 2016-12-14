<%@ Page Title="" Language="VB" MasterPageFile="~/Donation.master" AutoEventWireup="false" CodeFile="donation_list.aspx.vb" Inherits="donation_list" %>
<%@ MasterType VirtualPath="~/donation.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCPH" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="giftid" DataSourceID="sdsDonations">
        <ItemTemplate>
            giftid:
            <asp:Label ID="giftidLabel" runat="server" Text='<%# Eval("giftid") %>' />
            <br />
            giftamount:
            <asp:Label ID="giftamountLabel" runat="server" Text='<%# Eval("giftamount") %>' />
            <br />
            giftdate:
            <asp:Label ID="giftdateLabel" runat="server" Text='<%# Eval("giftdate") %>' />
            <br />
            cid:
            <asp:Label ID="cidLabel" runat="server" Text='<%# Eval("cid") %>' />
            <br />
            did:
            <asp:Label ID="didLabel" runat="server" Text='<%# Eval("did") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="sdsDonations" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_SS16_pardiwalanConnectionString %>" SelectCommand="SELECT [giftid], [giftamount], [giftdate], [cid], [did] FROM [donorgift] WHERE ([did] = @did)">
        <SelectParameters>
            <asp:QueryStringParameter Name="did" QueryStringField="did" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


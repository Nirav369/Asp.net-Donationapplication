<%@ Page Title="" Language="VB" MasterPageFile="~/Donation.master" AutoEventWireup="false" CodeFile="gift_history.aspx.vb" Inherits="gift_history" %>
<%@ MasterType VirtualPath="~/donation.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCPH" Runat="Server">
    <asp:DetailsView ID="dtvGift" runat="server" AutoGenerateRows="False" DataSourceID="sdsGift" Height="50px" Width="125px" AllowPaging="True">
        <Fields>
            <asp:BoundField DataField="giftdate" HeaderText="giftdate" SortExpression="giftdate" />
            <asp:BoundField DataField="giftamount" HeaderText="giftamount" SortExpression="giftamount" />
            <asp:BoundField DataField="campaignname" HeaderText="campaignname" SortExpression="campaignname" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="sdsGift" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_SS16_pardiwalanConnectionString %>" SelectCommand="SELECT donorgift.giftdate, donorgift.giftamount, campaign.campaignname FROM donorgift INNER JOIN campaign ON donorgift.cid = campaign.campaignid WHERE (donorgift.did = @did)">
        <SelectParameters>
            <asp:SessionParameter Name="did" SessionField="did" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


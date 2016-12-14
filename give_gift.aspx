<%@ Page Title="" Language="VB" MasterPageFile="~/Donation.master" AutoEventWireup="false" CodeFile="give_gift.aspx.vb" Inherits="give_gift" %>
<%@ MasterType VirtualPath ="~/Donation.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCPH" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataSourceID="sdsGiveGift" DefaultMode="Insert">
        <EditItemTemplate>
            giftdate:
            <asp:TextBox ID="giftdateTextBox" runat="server" Text='<%# Bind("giftdate") %>' />
            <br />
            giftamount:
            <asp:TextBox ID="giftamountTextBox" runat="server" Text='<%# Bind("giftamount") %>' />
            <br />
            cid:
            <asp:TextBox ID="cidTextBox" runat="server" Text='<%# Bind("cid") %>' />
            <br />
            campaignname:
            <asp:TextBox ID="campaignnameTextBox" runat="server" Text='<%# Bind("campaignname") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            giftdate:
            <asp:TextBox ID="txtGiftDate" runat="server" Text='<%# Bind("giftdate") %>' />
            <br />
            giftamount:
            <asp:TextBox ID="txtGiftAmount" runat="server" Text='<%# Bind("giftamount") %>' />
            <br />
            campaignname:
            <asp:DropDownList ID="ddlCampName" runat="server" DataSourceID="sdsCamp" DataTextField="campaignname" DataValueField="campaignid">
            </asp:DropDownList>
            <asp:SqlDataSource ID="sdsCamp" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_SS16_pardiwalanConnectionString %>" SelectCommand="SELECT [campaignid], [campaignname] FROM [campaign]"></asp:SqlDataSource>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" OnClick="InsertButton_Click" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            giftdate:
            <asp:Label ID="giftdateLabel" runat="server" Text='<%# Bind("giftdate") %>' />
            <br />
            giftamount:
            <asp:Label ID="giftamountLabel" runat="server" Text='<%# Bind("giftamount") %>' />
            <br />
            cid:
            <asp:Label ID="cidLabel" runat="server" Text='<%# Bind("cid") %>' />
            <br />
            campaignname:
            <asp:Label ID="campaignnameLabel" runat="server" Text='<%# Bind("campaignname") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="sdsGiveGift" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_SS16_pardiwalanConnectionString %>" InsertCommand="insert into donorgift (giftamount, giftdate, cid, did) values (@amount, @date, @cid, @did)" SelectCommand="select giftdate,giftamount,cid,campaignname from donorgift join campaign on campaignid=cid where did = @did">
        <InsertParameters>
            <asp:Parameter Name="amount" />
            <asp:Parameter Name="date" />
            <asp:Parameter Name="cid" />
            <asp:Parameter Name="did" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="did" SessionField="did" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


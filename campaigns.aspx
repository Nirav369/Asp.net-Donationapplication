<%@ Page Title="" Language="VB" MasterPageFile="~/Donation.master" AutoEventWireup="false" CodeFile="campaigns.aspx.vb" Inherits="campaigns" %>
<%@ MasterType VirtualPath="~/donation.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
 p.MsoNormal
	{margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	        margin-left: 0in;
            margin-right: 0in;
            margin-top: 0in;
        }
        .auto-style11 {
            width: 197px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainCPH" Runat="Server">
    <asp:GridView ID="dgvCampaign" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="campaignid" DataSourceID="sdsCampaigns">
        <AlternatingRowStyle BackColor="Silver" />
        <Columns>
            <asp:BoundField DataField="campaignname" HeaderText="Name" SortExpression="campaignname" />
            <asp:BoundField DataField="goal" DataFormatString="{0:c}" HeaderText="Goal" SortExpression="goal" />
            <asp:BoundField DataField="startdate" HeaderText="Start date" SortExpression="startdate" />
            <asp:BoundField DataField="enddate" HeaderText="End date" SortExpression="enddate" />
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="sdsCampaigns" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_SS16_pardiwalanConnectionString %>" DeleteCommand="DELETE FROM [campaign] WHERE [campaignid] = @campaignid" InsertCommand="INSERT INTO [campaign] ([campaignname], [goal], [startdate], [enddate]) VALUES (@campaignname, @goal, @startdate, @enddate)" SelectCommand="SELECT [campaignid], [campaignname], [goal], [startdate], [enddate] FROM [campaign]" UpdateCommand="UPDATE [campaign] SET [campaignname] = @campaignname, [goal] = @goal, [startdate] = @startdate, [enddate] = @enddate WHERE [campaignid] = @campaignid">
        <DeleteParameters>
            <asp:Parameter Name="campaignid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="campaignname" Type="String" />
            <asp:Parameter Name="goal" Type="Int32" />
            <asp:Parameter Name="startdate" Type="DateTime" />
            <asp:Parameter Name="enddate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="campaignname" Type="String" />
            <asp:Parameter Name="goal" Type="Int32" />
            <asp:Parameter Name="startdate" Type="DateTime" />
            <asp:Parameter Name="enddate" Type="DateTime" />
            <asp:Parameter Name="campaignid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Angsana New&quot;;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:TH">To create a new campaign,&nbsp;enter the information and click Add New Campaign<br />
    <br />
    </span>
    <table class="auto-style10">
        <tr>
            <td class="auto-style11"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Angsana New&quot;;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:TH">Campaign Name</span></td>
            <td>
                <asp:TextBox ID="txtCampaignName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <p class="MsoNormal">
                    Goal<o:p></o:p></p>
            </td>
            <td>
                <asp:TextBox ID="txtGoal" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <p class="MsoNormal">
                    Start Date<o:p></o:p></p>
            </td>
            <td>
                <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">End Date</td>
            <td>
                <asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:Button ID="btnAddCampaign" runat="server" Text="Add Campaign" />
            </td>
        </tr>
    </table>
    <br />
    <asp:Label ID="lblError" runat="server"></asp:Label>
</asp:Content>


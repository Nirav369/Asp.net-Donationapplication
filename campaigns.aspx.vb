
Partial Class campaigns
    Inherits System.Web.UI.Page

    Protected Sub btnAddCampaign_Click(sender As Object, e As EventArgs) Handles btnAddCampaign.Click
        sdsCampaigns.InsertParameters("campaignname").DefaultValue = txtCampaignName.Text
        sdsCampaigns.InsertParameters("goal").DefaultValue = txtGoal.Text
        sdsCampaigns.InsertParameters("startdate").DefaultValue = txtStartDate.Text
        sdsCampaigns.InsertParameters("enddate").DefaultValue = txtEndDate.Text

        Try
            sdsCampaigns.Insert()
            txtCampaignName.Text = ""
            txtEndDate.Text = ""
            txtGoal.Text = ""
            txtStartDate.Text = ""

        Catch ex As Exception
            lblError.Text = ex.Message
        End Try
    End Sub

    Protected Sub dgvCampaign_RowUpdated(sender As Object, e As GridViewUpdatedEventArgs) Handles dgvCampaign.RowUpdated
        If e.Exception IsNot Nothing Then
            lblError.Text = e.Exception.Message
            e.ExceptionHandled = True
            e.KeepInEditMode = True
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            If Session("username") = "" Then
                Response.Redirect("first_login.aspx")
            Else
                If Session("level") = 1 Then
                    Me.Master.AdminMenu = True
                    Me.Master.UserMenu = False
                Else
                    Me.Master.AdminMenu = False
                    Me.Master.UserMenu = True
                End If
            End If
        Catch ex As Exception
            Me.Master.StatusLable.Text = ex.Message
        End Try
    End Sub
End Class

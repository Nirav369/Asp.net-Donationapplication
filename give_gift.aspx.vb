
Partial Class give_gift
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        FormView1.DefaultMode = FormViewMode.ReadOnly
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

    Protected Sub InsertButton_Click(sender As Object, e As EventArgs)
        Try

            Dim txtAmount As TextBox
            Dim txtDate As TextBox
            Dim ddlCamps As DropDownList

            txtAmount = FormView1.FindControl("txtgiftamount")
            txtDate = FormView1.FindControl("txtgiftdate")
            ddlCamps = FormView1.FindControl("ddlCampaign")

            sdsGiveGift.InsertParameters("amount").DefaultValue = txtAmount.Text
            sdsGiveGift.InsertParameters("date").DefaultValue = txtDate.Text
            sdsGiveGift.InsertParameters("cid").DefaultValue = ddlCamps.SelectedValue
            sdsGiveGift.InsertParameters("did").DefaultValue = Session("did")
        Catch ex As Exception
            Me.Master.StatusLable.Text = ex.Message
        End Try

    End Sub
End Class

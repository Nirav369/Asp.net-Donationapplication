
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            If Session("username") = "" Then
                Response.Redirect("first_login.aspx")
            Else
                If Session("level") = 1 Then
                    Me.Master.Adminmenu = True
                    Me.Master.Usermenu = False
                Else
                    Me.Master.Adminmenu = False
                    Me.Master.Usermenu = True
                End If
            End If
        Catch ex As Exception
            Me.Master.StatusLable.Text = ex.Message
        End Try
    End Sub
End Class

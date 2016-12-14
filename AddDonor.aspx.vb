Imports System.Data.SqlClient
Partial Class AddDonor
    Inherits System.Web.UI.Page

    Protected Sub btnAddDonor_Click(sender As Object, e As EventArgs) Handles btnAddDonor.Click
        Dim mySqlConnection2 As New SqlConnection
        Dim mySqlCommand2 As New SqlCommand
        Dim mySqlString As String
        Try
            mySqlConnection2.ConnectionString = "Data source=SHUCSD.sacredheart.edu\SQL2012; Initial Catalog=CS557_SS16_pardiwalan; User Id=CS557_SS16_pardiwalan; Password=CS557_SS16_pardiwalan;"
            mySqlString = "InsertUser"
            mySqlCommand2.CommandType = Data.CommandType.StoredProcedure
            mySqlCommand2.CommandText = mySqlString
            mySqlCommand2.Parameters.Add("@donoruser", Data.SqlDbType.VarChar).Value = txtAddUsername.Text
            mySqlCommand2.Parameters.Add("@donorpwd", Data.SqlDbType.VarChar).Value = txtAddPassword.Text
            mySqlCommand2.Parameters.Add("@donorlevel", Data.SqlDbType.VarChar).Value = ddlAddLevel.SelectedValue
            mySqlCommand2.Parameters.Add("@donorlname", Data.SqlDbType.VarChar).Value = txtLastName.Text
            mySqlCommand2.Parameters.Add("@donorfname", Data.SqlDbType.VarChar).Value = txtFirstname.Text
            mySqlCommand2.Parameters.Add("@affiliation", Data.SqlDbType.VarChar).Value = ddlAddAffiliation.SelectedValue

            mySqlConnection2.Open()
            mySqlCommand2.Connection = mySqlConnection2
            lblError.Text = mySqlCommand2.ExecuteNonQuery().ToString & "Record Added"
            mySqlConnection2.Close()
            txtAddPassword.Text = ""
            txtAddUsername.Text = ""
            txtFirstname.Text = ""
            txtLastName.Text = ""
            ddlAddAffiliation.SelectedIndex = -1
            ddlAddLevel.SelectedIndex = -1

        Catch ex As Exception
            lblError.Text = ex.Message
        End Try
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

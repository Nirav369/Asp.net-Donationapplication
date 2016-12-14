
Imports System.Data.SqlClient

Partial Class first_login
    Inherits System.Web.UI.Page

    Protected Sub lbRegister_Click(sender As Object, e As EventArgs) Handles lbRegister.Click
        Response.Redirect("register.aspx")
    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        ' Session("username") = txtUserName.Text
        ' Session("password") = txtPassword.Text
        'Response.Redirect("success.aspx")

        Dim mySqlConnection As New SqlConnection
        Dim mySqlCommand As New SqlCommand
        Dim mySqlString As String
        Dim mySqlReader As SqlDataReader
        Try
            'mySqlConnection.ConnectionString = ConfigurationManager.ConnectionStrings("").ConnectionString
            mySqlConnection.ConnectionString = "Data Source=SHUCSD.sacredheart.edu\SQL2012; Initial Catalog=CS557_SS16_pardiwalan; User ID=CS557_SS16_pardiwalan; Password=CS557_SS16_pardiwalan"
            mySqlString = ("SELECT * FROM donor_user WHERE donorname = @username AND donorpassword = @password")
            mySqlCommand.CommandType = Data.CommandType.Text
            mySqlCommand.CommandText = mySqlString
            mySqlCommand.Parameters.Add("@username", Data.SqlDbType.VarChar).Value = txtUserName.Text
            mySqlCommand.Parameters.Add("@password", Data.SqlDbType.VarChar).Value = txtPassword.Text
            mySqlConnection.Open()
            mySqlCommand.Connection = mySqlConnection
            mySqlReader = mySqlCommand.ExecuteReader()
            If mySqlReader.HasRows Then
                mySqlReader.Read()
                Session("username") = mySqlReader("donorname")
                Session("level") = mySqlReader("donorlevel")
                Session("did") = mySqlReader("donorid_fk")
                Response.Redirect("default.aspx")
            Else
                Me.Master.StatusLable.Text = "Not a User"

            End If
            mySqlReader.Close()
            mySqlConnection.Close()
        Catch ex As Exception
            Me.Master.StatusLable.Text = ex.Message
        End Try

    End Sub
End Class

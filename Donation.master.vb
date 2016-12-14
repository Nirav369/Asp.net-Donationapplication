
Partial Class Donation

    Inherits System.Web.UI.MasterPage

    'DEFINING AND DECLARING PROPERTY FOR STATUS LABLE.
    Public Property StatusLable() As Label
        Get
            Return lblStatus
        End Get
        Set(value As Label)
            lblStatus = value
        End Set
    End Property

    'SETTING PROPERTY FOR NAVIGATION MENU AFTER LOGIN.
    Public WriteOnly Property AdminMenu() As Boolean
        Set(ByVal value As Boolean)
            mnuAdmin.Visible = value
        End Set
    End Property

    Public WriteOnly Property UserMenu() As Boolean
        Set(ByVal value As Boolean)
            mnuUser.Visible = value
        End Set
    End Property

    'FUNCTION FOR CALCULATION NUMBER OF DAYS LEFT
    Private Function DaysUntilFoundersDay() As Integer
        Dim NextFoundersDay As Date = New DateTime(DateTime.Today.Year, 3, 19)
        If NextFoundersDay < DateTime.Today Then
            NextFoundersDay = NextFoundersDay.AddYears(1)
        End If
        Dim Daysleft As TimeSpan = NextFoundersDay - DateTime.Today
        Return Daysleft.Days
    End Function

    'ON PAGE LOAD
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim DaysforFounders As Integer = DaysUntilFoundersDay()
        If DaysforFounders = 0 Then
            lblMessage.Text = "Happy Founders day"
        ElseIf DaysforFounders = 1 Then
            lblMessage.Text = " Tomorrow is Founders day"
        Else
            lblMessage.Text = DaysforFounders & " Days Left for next Founders day"
        End If
    End Sub

    'LOGOUT BUTTON
    Protected Sub lnkbtnLogout_Click(sender As Object, e As EventArgs) Handles lnkbtnLogout.Click
        Session.RemoveAll()
        Response.Redirect("first_login.aspx")
    End Sub


End Class


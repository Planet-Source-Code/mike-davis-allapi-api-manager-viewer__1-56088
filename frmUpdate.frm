VERSION 5.00
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "msinet.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "comctl32.ocx"
Begin VB.Form frmUpdate 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Update API's"
   ClientHeight    =   2250
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5160
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2250
   ScaleWidth      =   5160
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   4080
      TabIndex        =   11
      Top             =   1800
      Width           =   975
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "&Update"
      Height          =   375
      Left            =   120
      TabIndex        =   10
      Top             =   1800
      Width           =   975
   End
   Begin VB.TextBox txtReturns 
      Height          =   1095
      Left            =   1680
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   4
      TabStop         =   0   'False
      Top             =   3960
      Width           =   1215
   End
   Begin VB.TextBox txtParameters 
      Height          =   1095
      Left            =   3000
      MultiLine       =   -1  'True
      TabIndex        =   3
      TabStop         =   0   'False
      Top             =   3960
      Width           =   1215
   End
   Begin VB.TextBox txtExamples 
      Height          =   1095
      Left            =   4320
      MultiLine       =   -1  'True
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   3960
      Width           =   1215
   End
   Begin VB.TextBox txtRelated 
      Height          =   1095
      Left            =   5640
      MultiLine       =   -1  'True
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   3960
      Width           =   1215
   End
   Begin ComctlLib.ProgressBar Status 
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   840
      Width           =   4935
      _ExtentX        =   8705
      _ExtentY        =   450
      _Version        =   327682
      Appearance      =   1
      Max             =   27
   End
   Begin RichTextLib.RichTextBox rtfHTML 
      Height          =   1335
      Left            =   120
      TabIndex        =   5
      TabStop         =   0   'False
      Top             =   3840
      Width           =   1455
      _ExtentX        =   2566
      _ExtentY        =   2355
      _Version        =   393217
      Enabled         =   -1  'True
      TextRTF         =   $"frmUpdate.frx":0000
   End
   Begin InetCtlsObjects.Inet Inet1 
      Left            =   4320
      Top             =   3960
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
   End
   Begin ComctlLib.ListView lstAPI 
      Height          =   1815
      Left            =   120
      TabIndex        =   6
      Top             =   2640
      Width           =   9015
      _ExtentX        =   15901
      _ExtentY        =   3201
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   0   'False
      HideSelection   =   0   'False
      _Version        =   327682
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   8
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "API Name"
         Object.Width           =   4410
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "URL"
         Object.Width           =   4410
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Description"
         Object.Width           =   4410
      EndProperty
      BeginProperty ColumnHeader(4) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   3
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Declaration"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(5) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   4
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "OS Supported"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(6) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   5
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Library"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(7) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   6
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Examples"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(8) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   7
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Related"
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.Label lblWarning 
      Alignment       =   2  'Center
      Caption         =   "      The update process may take several minutes to complete.      Please be patient as the update process executes."
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   9
      Top             =   1200
      Width           =   4935
   End
   Begin VB.Label lblCounter 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   480
      Width           =   4935
   End
   Begin VB.Label lblStatus 
      Alignment       =   2  'Center
      Caption         =   "Click the &Update Button To Begin"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   120
      Width           =   4935
   End
End
Attribute VB_Name = "frmUpdate"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Canceled As Boolean
Dim Updating As Boolean
Dim Counter As Integer

Public Sub LoadWebsite(strURL As String)
If Canceled = False Then
    rtfHTML.Text = Inet1.OpenURL(Trim$(strURL))
    rtfHTML.Text = ReplaceInString(rtfHTML.Text, """", "&quot;")
Else
    Inet1.Cancel
End If
End Sub

Public Sub ParseWebsite()
Dim currPos
Dim currURL As String
Dim currName As String
Dim newAPI As ListItem
Dim tTemp
Dim done As Boolean

If Trim$(rtfHTML.Text) = "" Then Exit Sub

currPos = InStr(1, rtfHTML.Text, "<td width=""50%"" height=""23"" background=""splitter.gif"">")
done = False

Do While Not done
    If Canceled = True Then
        done = True
        Exit Do
    End If
    
    If InStr(currPos + 1, LCase(rtfHTML.Text), LCase("No functions found that begin with the letter")) <> 0 Then
        done = True
        Exit Do
    End If
    
    currPos = InStr(currPos + 1, rtfHTML.Text, "<a href=""") + 9
    currURL = Mid(rtfHTML.Text, currPos, InStr(currPos + 1, rtfHTML.Text, ">") - currPos - 1)
    tTemp = InStrRev(currURL, ".")
    
    If tTemp = 0 Then
        currName = Mid(currURL, 1)
    Else
        currName = Mid(currURL, 1, tTemp - 1)
    End If
    
    If currName = "#top" Then
        done = True
    Else
        Set newAPI = lstAPI.ListItems.Add(, , currName)
        newAPI.SubItems(1) = currURL
        Counter = Counter + 1
        If Canceled = False Then lblCounter.Caption = Counter & " API's found."
    End If
       
    If InStr(currPos + 1, rtfHTML.Text, "<a href=""") = 0 Then done = True
           
    DoEvents
Loop

End Sub

Public Sub ParseWebsite2()
Dim currPos
Dim currPos2
Dim currDescription As String
Dim currDeclare As String
Dim currVBNETDeclare As String
Dim currOS As String
Dim currLib As String
Dim currParameters As String
Dim currReturns As String
Dim currPath As String
Dim currExampleURL As String
Dim currExample As String
Dim currRelated As String
Dim X As Integer
Dim appPath As String

appPath = IIf(Right(App.Path, 1) = "\", App.Path, App.Path & "\")
Counter = 0

If lstAPI.ListItems.Count <= 0 Then Exit Sub

For X = 1 To lstAPI.ListItems.Count
    If Canceled = True Then
        Exit For
    End If
    
    LoadWebsite "http://www.mentalis.org/apilist/" & lstAPI.ListItems(X).SubItems(1)
    
    If Trim$(rtfHTML.Text) = "" Then Exit Sub
    
    currPos = InStr(1, LCase(rtfHTML.Text), "<em>")
    currPos = InStr(currPos + 1, LCase(rtfHTML.Text), "<em>") + 4
    currPos2 = InStr(currPos + 1, LCase(rtfHTML.Text), "</em>")
    currDescription = Mid(rtfHTML.Text, currPos, currPos2 - currPos)
    
    currPos = InStr(currPos + 1, LCase(rtfHTML.Text), "<strong>vb") + 10
    currPos = InStr(currPos, rtfHTML.Text, "<font") + 5
    currPos = InStr(currPos, rtfHTML.Text, ">") + 1
    currPos2 = InStr(currPos + 1, rtfHTML.Text, "</font>")
    currDeclare = Mid(rtfHTML.Text, currPos, currPos2 - currPos)
    
    If InStr(currPos + 1, LCase(rtfHTML.Text), "<strong>vb.net") <> 0 Then
        currPos = InStr(currPos + 1, LCase(rtfHTML.Text), "<strong>vb.net") + 14
        currPos = InStr(currPos, rtfHTML.Text, "<font") + 5
        currPos = InStr(currPos, rtfHTML.Text, ">") + 1
        currPos2 = InStr(currPos + 1, rtfHTML.Text, "</font>")
        currVBNETDeclare = Mid(rtfHTML.Text, currPos, currPos2 - currPos)
    Else
        currVBNETDeclare = "N/A"
    End If
    
    currPos = InStr(currPos + 1, LCase(rtfHTML.Text), "operating systems supported") + Len("operating systems supported") + 1
    currPos = InStr(currPos, rtfHTML.Text, "<i>") + 3
    currPos2 = InStr(currPos + 1, rtfHTML.Text, "<")
    currOS = Mid(rtfHTML.Text, currPos, currPos2 - currPos)
    
    currPos = InStr(currPos + 1, LCase(rtfHTML.Text), "library") + Len("library") + 1
    currPos = InStr(currPos, rtfHTML.Text, "<i>") + 3
    currPos2 = InStr(currPos + 1, rtfHTML.Text, "<")
    currLib = Mid(rtfHTML.Text, currPos, currPos2 - currPos)
      
    currPos = InStr(currPos + 1, LCase(rtfHTML.Text), "parameter information") + Len("Parameter Information") + 1
    currPos = InStr(currPos, rtfHTML.Text, "<i>") + 3
    currPos2 = InStr(currPos + 1, rtfHTML.Text, "</i>")
    currParameters = Mid(rtfHTML.Text, currPos, currPos2 - currPos)
    currParameters = ReplaceInString(currParameters, vbCrLf, "<br>")
    
    currPos = InStr(currPos + 1, LCase(rtfHTML.Text), "return values") + Len("Return Values") + 1
    currPos = InStr(currPos, rtfHTML.Text, "<i>") + 3
    currPos2 = InStr(currPos + 1, rtfHTML.Text, "</i>")
    currReturns = Mid(rtfHTML.Text, currPos, currPos2 - currPos)
    currReturns = ReplaceInString(currReturns, vbCrLf, "<br>")

    txtExamples.Text = ""
    Do While Not InStr(currPos + 1, LCase(rtfHTML.Text), "('") = 0
        currPos = InStr(currPos + 1, LCase(rtfHTML.Text), "('") + Len("('")
        currPos2 = InStr(currPos + 1, rtfHTML.Text, "'")
        currExampleURL = Mid(rtfHTML.Text, currPos, currPos2 - currPos)
        currPos = InStr(currPos + 1, LCase(rtfHTML.Text), ";"">") + 3
        currPos2 = InStr(currPos + 1, rtfHTML.Text, "<")
        currExample = Mid(rtfHTML.Text, currPos, currPos2 - currPos)
        txtExamples.Text = txtExamples.Text & currExample & "*" & currExampleURL & vbCrLf
    Loop

    If Trim$(txtExamples.Text) <> "" Then txtExamples.Text = Mid(txtExamples.Text, 1, Len(txtExamples.Text) - 2)
    
    txtRelated.Text = ""
    Do While Not InStr(currPos + 1, LCase(rtfHTML.Text), "- <a") = 0
        currPos = InStr(currPos + 1, LCase(rtfHTML.Text), "- <a") + Len("- <a") + 1
        currPos = InStr(currPos + 1, LCase(rtfHTML.Text), ">") + 1
        currPos2 = InStr(currPos + 1, rtfHTML.Text, "<")
        currRelated = Mid(rtfHTML.Text, currPos, currPos2 - currPos)
        txtRelated.Text = txtRelated.Text & currRelated & vbCrLf
    Loop
    If Trim$(txtRelated.Text) <> "" Then txtRelated.Text = Mid(txtRelated.Text, 1, Len(txtRelated.Text) - 2)
    
    lstAPI.ListItems(X).SubItems(2) = currDescription
    lstAPI.ListItems(X).SubItems(3) = currDeclare
    lstAPI.ListItems(X).SubItems(4) = currOS
    lstAPI.ListItems(X).SubItems(5) = currLib
    txtParameters.Text = currParameters
    txtReturns.Text = currReturns

    currPath = appPath & "API\" & UCase(Mid(lstAPI.ListItems(X).Text, 1, 1)) & "\"
    
    If FileExists(currPath) = False Then
        MakeDir (currPath)
    End If
    
    If FileExists(currPath & lstAPI.ListItems(X).Text & ".api") = False Then
        Open currPath & lstAPI.ListItems(X).Text & ".api" For Output As #1
        Print #1, "[NAME]"
        Print #1, lstAPI.ListItems(X).Text
        Print #1, "[DESCRIPTION]"
        Print #1, lstAPI.ListItems(X).SubItems(2)
        Print #1, "[DECLARATION]"
        Print #1, lstAPI.ListItems(X).SubItems(3)
        Print #1, "[VBNET]"
        Print #1, currVBNETDeclare
        Print #1, "[OS]"
        Print #1, lstAPI.ListItems(X).SubItems(4)
        Print #1, "[LIBRARY]"
        Print #1, lstAPI.ListItems(X).SubItems(5)
        Print #1, "[PARAMETERS]"
        Print #1, txtParameters.Text
        Print #1, "[RETURNS]"
        Print #1, txtReturns.Text
        Print #1, "[EXAMPLES]"
        Print #1, txtExamples.Text
        Print #1, "[RELATED]"
        Print #1, txtRelated.Text
        Close #1
        Counter = Counter + 1
    End If
    
    If Canceled = False Then lblCounter.Caption = X & " / " & lstAPI.ListItems.Count & " (" & Counter & " Added)"
    Status.Value = Status.Value + 1
Next X
End Sub

Private Sub cmdCancel_Click()
frmMain.UpdateCanceled = True
If Updating = True Then
    lblStatus.Caption = "Canceling..."
    lblCounter.Caption = ""
    Canceled = True
Else
    Unload Me
End If

End Sub

Private Sub cmdUpdate_Click()
cmdUpdate.Enabled = False
Update
End Sub

Private Sub Form_Load()
Me.Icon = frmMain.Icon
Canceled = False
Updating = False
Counter = 0
End Sub

Private Sub Update()
Updating = True
lstAPI.ListItems.Clear

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/_.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (_)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/apilist.php"
If Canceled = False Then lblStatus.Caption = "Generating API List (A)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/b.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (B)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/c.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (C)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/d.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (D)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/e.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (E)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/f.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (F)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/g.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (G)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/h.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (H)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/i.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (I)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/j.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (J)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/k.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (K)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/l.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (L)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/m.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (M)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/n.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (N)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/o.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (O)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/p.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (P)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/q.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (Q)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/r.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (R)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/s.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (S)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/t.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (T)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/u.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (U)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/v.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (V)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/w.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (W)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/x.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (X)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/y.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (Y)"
Call ParseWebsite: Status.Value = Status.Value + 1

If Canceled = True Then GoTo Finish
LoadWebsite "http://www.mentalis.org/apilist/z.shtml"
If Canceled = False Then lblStatus.Caption = "Generating API List (Z)"
Call ParseWebsite: Status.Value = Status.Value + 1


If Canceled = True Then GoTo Finish
Status.Value = 0
Status.Max = lstAPI.ListItems.Count

If Canceled = False Then lblStatus.Caption = "Adding New API's (" & Counter & " Found)"
Call ParseWebsite2

Finish:
If Canceled = False Then
    If Counter > 0 Then
        MsgBox Counter & " new API's added successfully.", vbInformation
    Else
        MsgBox "No new API's.", vbInformation
    End If
End If

Unload frmUpdate

End Sub


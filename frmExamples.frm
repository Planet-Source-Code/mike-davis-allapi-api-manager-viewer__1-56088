VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "comctl32.ocx"
Begin VB.Form frmExamples 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "frmExamples"
   ClientHeight    =   1935
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3975
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1935
   ScaleWidth      =   3975
   StartUpPosition =   1  'CenterOwner
   Begin ComctlLib.ListView lstExamples 
      Height          =   855
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Width           =   3735
      _ExtentX        =   6588
      _ExtentY        =   1508
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   0   'False
      HideSelection   =   0   'False
      HideColumnHeaders=   -1  'True
      _Version        =   327682
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   1
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Name"
         Object.Width           =   5292
      EndProperty
   End
   Begin RichTextLib.RichTextBox txtExamples 
      Height          =   1215
      Left            =   120
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   2040
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   2143
      _Version        =   393217
      Enabled         =   0   'False
      TextRTF         =   $"frmExamples.frx":0000
   End
   Begin VB.Label Label1 
      Caption         =   "The selected API has the following examples.  Double click an item to go to the example. (Internet Required)"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3735
   End
End
Attribute VB_Name = "frmExamples"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public eAPI As String

Private Sub LoadExamples()
Dim appPath As String
Dim currFile As String
Dim rel As String
Dim currPos
Dim X As Integer
Dim lastPos

appPath = IIf(Right(App.Path, 1) = "\", App.Path, App.Path & "\")
currFile = appPath & "API\" & UCase(Mid(eAPI, 1, 1)) & "\" & eAPI & ".api"

currPos = 1
lastPos = 0

txtExamples.LoadFile currFile, rtfText

currPos = InStr(currPos, txtExamples.Text, "[EXAMPLES]") + 12
txtExamples.Text = ReplaceInString(Mid(txtExamples.Text, currPos, InStr(currPos, txtExamples.Text, "[RELATED]") - currPos - 2), "|", vbCrLf)
txtExamples.Text = Trim$(txtExamples.Text)

currPos = 1
lastPos = 0

lstExamples.ListItems.Clear
For X = 1 To Len(txtExamples.Text)
    If Mid(txtExamples.Text, X, 1) = "|" Then
        currExample = Mid(txtExamples.Text, currPos, X - lastPos - 1)
        Set newExample = lstExamples.ListItems.Add(, , Mid(currExample, 1, InStr(1, currExample, "*") - 1))
        newExample.Tag = Mid(currExample, InStr(1, currExample, "*") + 1)
        currPos = X + 1
        lastPos = X
    ElseIf X = Len(txtExamples.Text) Then
        currExample = Mid(txtExamples.Text, currPos)
        Set newExample = lstExamples.ListItems.Add(, , Mid(currExample, 1, InStr(1, currExample, "*") - 1))
        newExample.Tag = Mid(currExample, InStr(1, currExample, "*") + 1)
    End If
Next X


End Sub

Private Sub Form_Load()
Me.Icon = frmMain.Icon
Me.Caption = eAPI & " Examples"
Call EnhListView_Add_FullRowSelect(lstExamples, False)
Call EnhListView_Add_GridLines(lstExamples, False)
LoadExamples
End Sub

Private Sub lstExamples_DblClick()
Dim X As Integer
Dim sel As Integer

For X = 1 To lstExamples.ListItems.Count
    If lstExamples.ListItems(X).Selected = True Then
        sel = X
        Exit For
    End If
Next X

If sel <= 0 Then Exit Sub

Call ShellExecute(Me.hwnd, "open", "http://www.mentalis.org/apilist/" & lstExamples.ListItems(sel).Tag, vbNullString, vbNullString, vbNormalFocus)
Unload Me

End Sub

VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form frmRelated 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Related"
   ClientHeight    =   1920
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3975
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1920
   ScaleWidth      =   3975
   StartUpPosition =   1  'CenterOwner
   Begin RichTextLib.RichTextBox rtfAPI 
      Height          =   975
      Left            =   120
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   2160
      Width           =   4455
      _ExtentX        =   7858
      _ExtentY        =   1720
      _Version        =   393217
      Enabled         =   0   'False
      TextRTF         =   $"frmRelated.frx":0000
   End
   Begin VB.ListBox lstAPI 
      Height          =   840
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Width           =   3735
   End
   Begin VB.Label Label1 
      Caption         =   "The selected API is related to the following other API's.  Double click on an API below to be taken directly to it."
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
Attribute VB_Name = "frmRelated"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public tAPI As String
Dim NoCancel As Boolean

Private Sub LoadRelated()
Dim appPath As String
Dim currFile As String
Dim rel As String
Dim currPos
Dim X As Integer
Dim lastPos

appPath = IIf(Right(App.Path, 1) = "\", App.Path, App.Path & "\")
currFile = appPath & "API\" & UCase(Mid(tAPI, 1, 1)) & "\" & tAPI & ".api"

rtfAPI.LoadFile currFile, rtfText
currPos = InStr(1, rtfAPI.Text, "[RELATED]") + 10
rel = Mid(rtfAPI.Text, currPos + 1)
rel = ReplaceInString(rel, "*", vbCrLf)
rel = Mid(rel, 1, Len(rel) - 1)
rtfAPI.Text = rel

currPos = 1
lastPos = 0
For X = 1 To Len(rtfAPI.Text)
    If Mid(rtfAPI.Text, X, 1) = "*" Then
        lstAPI.AddItem Mid(rtfAPI.Text, currPos, X - lastPos - 1)
        currPos = X + 1
        lastPos = X
    ElseIf X = Len(rtfAPI.Text) Then
        lstAPI.AddItem Mid(rtfAPI.Text, currPos)
    End If
Next X
End Sub

Private Sub Form_Load()
NoCancel = False
Me.Icon = frmMain.Icon
Me.Caption = tAPI
LoadRelated
End Sub

Private Sub Form_Unload(Cancel As Integer)

If NoCancel = True Then
    frmAPI.uCanceled = False
Else
    frmAPI.uCanceled = True
End If

End Sub

Private Sub lstAPI_DblClick()
Dim X As Integer

If lstAPI.ListCount <= 0 Then Exit Sub

If lstAPI.ListIndex >= 0 Then
    Me.Enabled = False
    
    If frmMain.currLetter = "ALL" Or (UCase(frmMain.currLetter) = UCase(Mid(lstAPI.List(lstAPI.ListIndex), 1, 1))) Then
        For X = 1 To frmMain.lstAPI.ListItems.Count
            If UCase(frmMain.lstAPI.ListItems(X).Text) = UCase(lstAPI.List(lstAPI.ListIndex)) Then
                frmMain.lstAPI.ListItems(X).Selected = True
                Exit For
            End If
        Next X
    Else
        frmMain.currLetter = "ALL"
        frmMain.LoadAPIs
        
        For X = 1 To frmMain.lstAPI.ListItems.Count
            If UCase(frmMain.lstAPI.ListItems(X).Text) = UCase(lstAPI.List(lstAPI.ListIndex)) Then
                frmMain.lstAPI.ListItems(X).Selected = True
                Exit For
            End If
        Next X
    End If
    
    NoCancel = True
    Unload Me
End If

End Sub

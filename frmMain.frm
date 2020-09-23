VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "comctl32.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "ComDlg32.ocx"
Begin VB.Form frmMain 
   Caption         =   "AllAPI API Manager v1.0"
   ClientHeight    =   7605
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   9300
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   7605
   ScaleWidth      =   9300
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog cd1 
      Left            =   120
      Top             =   2760
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin ComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   285
      Left            =   0
      TabIndex        =   31
      Top             =   7320
      Width           =   9300
      _ExtentX        =   16404
      _ExtentY        =   503
      SimpleText      =   ""
      _Version        =   327682
      BeginProperty Panels {0713E89E-850A-101B-AFC0-4210102A8DA7} 
         NumPanels       =   1
         BeginProperty Panel1 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            TextSave        =   ""
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
      EndProperty
   End
   Begin ComctlLib.ListView lstAPI 
      Height          =   1095
      Left            =   120
      TabIndex        =   28
      Top             =   1560
      Width           =   1380
      _ExtentX        =   2434
      _ExtentY        =   1931
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   0   'False
      HideSelection   =   0   'False
      _Version        =   327682
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   2
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Name"
         Object.Width           =   2117
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Description"
         Object.Width           =   19403
      EndProperty
   End
   Begin RichTextLib.RichTextBox rtfAPI 
      Height          =   615
      Left            =   3960
      TabIndex        =   30
      TabStop         =   0   'False
      Top             =   6360
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   1085
      _Version        =   393217
      Enabled         =   0   'False
      TextRTF         =   $"frmMain.frx":2953A
   End
   Begin VB.FileListBox File1 
      Enabled         =   0   'False
      Height          =   675
      Left            =   120
      TabIndex        =   29
      TabStop         =   0   'False
      Top             =   6360
      Width           =   3735
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   0
      Left            =   120
      Picture         =   "frmMain.frx":295BC
      Style           =   1  'Graphical
      TabIndex        =   0
      Tag             =   "ALL"
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   1
      Left            =   770
      Picture         =   "frmMain.frx":29A66
      Style           =   1  'Graphical
      TabIndex        =   1
      Tag             =   "_"
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   2
      Left            =   1420
      Picture         =   "frmMain.frx":29F10
      Style           =   1  'Graphical
      TabIndex        =   2
      Tag             =   "A"
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   3
      Left            =   2070
      Picture         =   "frmMain.frx":2A3BA
      Style           =   1  'Graphical
      TabIndex        =   3
      Tag             =   "B"
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   11
      Left            =   7270
      Picture         =   "frmMain.frx":2A864
      Style           =   1  'Graphical
      TabIndex        =   11
      Tag             =   "J"
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   4
      Left            =   2720
      Picture         =   "frmMain.frx":2AD0E
      Style           =   1  'Graphical
      TabIndex        =   4
      Tag             =   "C"
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   5
      Left            =   3370
      Picture         =   "frmMain.frx":2B1B8
      Style           =   1  'Graphical
      TabIndex        =   5
      Tag             =   "D"
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   6
      Left            =   4020
      Picture         =   "frmMain.frx":2B662
      Style           =   1  'Graphical
      TabIndex        =   6
      Tag             =   "E"
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   7
      Left            =   4670
      Picture         =   "frmMain.frx":2BB0C
      Style           =   1  'Graphical
      TabIndex        =   7
      Tag             =   "F"
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   8
      Left            =   5320
      Picture         =   "frmMain.frx":2BFB6
      Style           =   1  'Graphical
      TabIndex        =   8
      Tag             =   "G"
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   9
      Left            =   5970
      Picture         =   "frmMain.frx":2C460
      Style           =   1  'Graphical
      TabIndex        =   9
      Tag             =   "H"
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   14
      Left            =   120
      Picture         =   "frmMain.frx":2C90A
      Style           =   1  'Graphical
      TabIndex        =   14
      Tag             =   "M"
      Top             =   760
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   15
      Left            =   770
      Picture         =   "frmMain.frx":2CDB4
      Style           =   1  'Graphical
      TabIndex        =   15
      Tag             =   "N"
      Top             =   760
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   16
      Left            =   1420
      Picture         =   "frmMain.frx":2D25E
      Style           =   1  'Graphical
      TabIndex        =   16
      Tag             =   "O"
      Top             =   760
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   17
      Left            =   2070
      Picture         =   "frmMain.frx":2D708
      Style           =   1  'Graphical
      TabIndex        =   17
      Tag             =   "P"
      Top             =   760
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   18
      Left            =   2720
      Picture         =   "frmMain.frx":2DBB2
      Style           =   1  'Graphical
      TabIndex        =   18
      Tag             =   "Q"
      Top             =   760
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   19
      Left            =   3370
      Picture         =   "frmMain.frx":2E05C
      Style           =   1  'Graphical
      TabIndex        =   19
      Tag             =   "R"
      Top             =   760
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   20
      Left            =   4020
      Picture         =   "frmMain.frx":2E506
      Style           =   1  'Graphical
      TabIndex        =   20
      Tag             =   "S"
      Top             =   760
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   21
      Left            =   4670
      Picture         =   "frmMain.frx":2E9B0
      Style           =   1  'Graphical
      TabIndex        =   21
      Tag             =   "T"
      Top             =   760
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   22
      Left            =   5320
      Picture         =   "frmMain.frx":2EE5A
      Style           =   1  'Graphical
      TabIndex        =   22
      Tag             =   "U"
      Top             =   760
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   23
      Left            =   5970
      Picture         =   "frmMain.frx":2F304
      Style           =   1  'Graphical
      TabIndex        =   23
      Tag             =   "V"
      Top             =   760
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   24
      Left            =   6620
      Picture         =   "frmMain.frx":2F7AE
      Style           =   1  'Graphical
      TabIndex        =   24
      Tag             =   "W"
      Top             =   760
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   10
      Left            =   6620
      Picture         =   "frmMain.frx":2FC58
      Style           =   1  'Graphical
      TabIndex        =   10
      Tag             =   "I"
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   25
      Left            =   7270
      Picture         =   "frmMain.frx":30102
      Style           =   1  'Graphical
      TabIndex        =   25
      Tag             =   "X"
      Top             =   760
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   12
      Left            =   7920
      Picture         =   "frmMain.frx":305AC
      Style           =   1  'Graphical
      TabIndex        =   12
      Tag             =   "K"
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   26
      Left            =   7920
      Picture         =   "frmMain.frx":30A56
      Style           =   1  'Graphical
      TabIndex        =   26
      Tag             =   "Y"
      Top             =   760
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   13
      Left            =   8570
      Picture         =   "frmMain.frx":30F00
      Style           =   1  'Graphical
      TabIndex        =   13
      Tag             =   "L"
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton cmdAlpha 
      Height          =   615
      Index           =   27
      Left            =   8570
      Picture         =   "frmMain.frx":313AA
      Style           =   1  'Graphical
      TabIndex        =   27
      Tag             =   "Z"
      Top             =   760
      Width           =   615
   End
   Begin ComctlLib.ImageList ILAPI 
      Left            =   4560
      Top             =   5640
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      MaskColor       =   12632256
      _Version        =   327682
   End
   Begin ComctlLib.ImageList ILALPHABET 
      Left            =   3960
      Top             =   5640
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   16777215
      _Version        =   327682
      BeginProperty Images {0713E8C2-850A-101B-AFC0-4210102A8DA7} 
         NumListImages   =   28
         BeginProperty ListImage1 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":31854
            Key             =   "ALL"
         EndProperty
         BeginProperty ListImage2 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":320A6
            Key             =   "_"
         EndProperty
         BeginProperty ListImage3 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":328F8
            Key             =   "A"
         EndProperty
         BeginProperty ListImage4 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":3314A
            Key             =   "B"
         EndProperty
         BeginProperty ListImage5 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":3399C
            Key             =   "C"
         EndProperty
         BeginProperty ListImage6 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":341EE
            Key             =   "D"
         EndProperty
         BeginProperty ListImage7 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":34A40
            Key             =   "E"
         EndProperty
         BeginProperty ListImage8 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":35292
            Key             =   "F"
         EndProperty
         BeginProperty ListImage9 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":35AE4
            Key             =   "G"
         EndProperty
         BeginProperty ListImage10 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":36336
            Key             =   "H"
         EndProperty
         BeginProperty ListImage11 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":36B88
            Key             =   "I"
         EndProperty
         BeginProperty ListImage12 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":373DA
            Key             =   "J"
         EndProperty
         BeginProperty ListImage13 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":37C2C
            Key             =   "K"
         EndProperty
         BeginProperty ListImage14 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":3847E
            Key             =   "L"
         EndProperty
         BeginProperty ListImage15 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":38CD0
            Key             =   "M"
         EndProperty
         BeginProperty ListImage16 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":39522
            Key             =   "N"
         EndProperty
         BeginProperty ListImage17 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":39D74
            Key             =   "O"
         EndProperty
         BeginProperty ListImage18 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":3A5C6
            Key             =   "P"
         EndProperty
         BeginProperty ListImage19 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":3AE18
            Key             =   "Q"
         EndProperty
         BeginProperty ListImage20 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":3B66A
            Key             =   "R"
         EndProperty
         BeginProperty ListImage21 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":3BEBC
            Key             =   "S"
         EndProperty
         BeginProperty ListImage22 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":3C70E
            Key             =   "T"
         EndProperty
         BeginProperty ListImage23 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":3CF60
            Key             =   "U"
         EndProperty
         BeginProperty ListImage24 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":3D7B2
            Key             =   "V"
         EndProperty
         BeginProperty ListImage25 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":3E004
            Key             =   "W"
         EndProperty
         BeginProperty ListImage26 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":3E856
            Key             =   "X"
         EndProperty
         BeginProperty ListImage27 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":3F0A8
            Key             =   "Y"
         EndProperty
         BeginProperty ListImage28 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmMain.frx":3F8FA
            Key             =   "Z"
         EndProperty
      EndProperty
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuExport 
         Caption         =   "&Save API"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuEdit 
         Caption         =   "&Edit API"
         Shortcut        =   ^E
         Visible         =   0   'False
      End
      Begin VB.Menu mnuPrint 
         Caption         =   "&Print API"
         Enabled         =   0   'False
         Shortcut        =   ^P
      End
      Begin VB.Menu bar1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuQuit 
         Caption         =   "&Quit"
         Shortcut        =   ^Q
      End
   End
   Begin VB.Menu mnuMainEdit 
      Caption         =   "&Edit"
      Begin VB.Menu mnuSearch 
         Caption         =   "&Search API's"
         Enabled         =   0   'False
         Shortcut        =   ^F
      End
      Begin VB.Menu bar2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuOptions 
         Caption         =   "&Options"
         Enabled         =   0   'False
         Shortcut        =   ^O
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
      Begin VB.Menu mnuTopics 
         Caption         =   "Help Topics"
         Enabled         =   0   'False
         Shortcut        =   ^H
      End
      Begin VB.Menu bar3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuRegister 
         Caption         =   "Register"
         Enabled         =   0   'False
         Shortcut        =   ^R
      End
      Begin VB.Menu mnuUpdate 
         Caption         =   "Update"
         Shortcut        =   ^U
      End
      Begin VB.Menu bar5 
         Caption         =   "-"
      End
      Begin VB.Menu mnuAbout 
         Caption         =   "&About"
         Shortcut        =   ^A
      End
   End
   Begin VB.Menu mnuAPI 
      Caption         =   "lstAPI"
      Visible         =   0   'False
      Begin VB.Menu mnuViewAPI 
         Caption         =   "View API"
      End
      Begin VB.Menu mnuRelated 
         Caption         =   "Related To..."
      End
      Begin VB.Menu mnuExamples 
         Caption         =   "Examples"
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public UpdateCanceled As Boolean
Public currLetter As String

Private Sub LoadSettings()
    
Me.Height = GetSetting("AllAPI", "Main", "Height", 8415)
Me.Width = GetSetting("AllAPI", "Main", "Width", 9420)
Me.Left = GetSetting("AllAPI", "Main", "Left", (Screen.Width / 2) - (Me.Width / 2))
Me.Top = GetSetting("AllAPI", "Main", "Top", (Screen.Height / 2) - (Me.Height / 2))
Me.WindowState = GetSetting("AllAPI", "Main", "State", 0)

End Sub

Private Sub SaveSettings()
Dim WState As Integer

WState = Me.WindowState
Me.WindowState = vbNormal

Call SaveSetting("AllAPI", "Main", "Height", Me.Height)
Call SaveSetting("AllAPI", "Main", "Width", Me.Width)
Call SaveSetting("AllAPI", "Main", "Left", Me.Left)
Call SaveSetting("AllAPI", "Main", "Top", Me.Top)
Call SaveSetting("AllAPI", "Main", "State", CStr(WState))

End Sub


Public Sub DisableForm()
Dim X As Integer

For X = 0 To cmdAlpha.UBound
    cmdAlpha(X).Enabled = False
Next X

lstAPI.Enabled = False

mnuFile.Enabled = False
mnuMainEdit.Enabled = False
mnuHelp.Enabled = False

End Sub

Public Sub EnableForm()
Dim X As Integer

For X = 0 To cmdAlpha.UBound
    cmdAlpha(X).Enabled = True
Next X

lstAPI.Enabled = True

mnuFile.Enabled = True
mnuMainEdit.Enabled = True
mnuHelp.Enabled = True

End Sub

Public Sub LoadAPIs()
Dim Alphabet As String
Dim X As Integer
Dim Y As Integer
Dim appPath As String
Dim newAPI As ListItem
Dim currPath As String
Dim currPos


appPath = IIf(Right(App.Path, 1) = "\", App.Path, App.Path & "\")
Alphabet = "_ABCDEFGHIJKLMNOPQRSTUVWXYZ"

lstAPI.ListItems.Clear

DisableForm
If currLetter = "ALL" Then
    For X = 1 To 27
        currPath = appPath & "API\" & Mid(Alphabet, X, 1) & "\"
        If FileExists(currPath) = True Then
            File1.Path = currPath
            If File1.ListCount > 0 Then
                For Y = 0 To File1.ListCount - 1
                    currPos = 0
                    Set newAPI = lstAPI.ListItems.Add(, , Mid(File1.List(Y), 1, InStrRev(File1.List(Y), ".") - 1))
                    rtfAPI.Text = ""
                    rtfAPI.LoadFile currPath & File1.List(Y), rtfText
                    currPos = InStr(currPos + 1, rtfAPI.Text, "[DESCRIPTION]") + 14
                    newAPI.SubItems(1) = Mid(rtfAPI.Text, currPos + 1, InStr(currPos + 1, rtfAPI.Text, "[DECLARATION]") - currPos + 1 - 4)
                    DoEvents
                Next Y
            End If
        End If
        DoEvents
    Next X
Else
    currPath = appPath & "API\" & currLetter & "\"
    If FileExists(currPath) = True Then
        File1.Path = currPath
        If File1.ListCount > 0 Then
            For Y = 0 To File1.ListCount - 1
                currPos = 0
                Set newAPI = lstAPI.ListItems.Add(, , Mid(File1.List(Y), 1, InStrRev(File1.List(Y), ".") - 1))
                rtfAPI.Text = ""
                rtfAPI.LoadFile currPath & File1.List(Y), rtfText
                currPos = InStr(currPos + 1, rtfAPI.Text, "[DESCRIPTION]") + 14
                newAPI.SubItems(1) = Mid(rtfAPI.Text, currPos + 1, InStr(currPos + 1, rtfAPI.Text, "[DECLARATION]") - currPos + 1 - 4)
            DoEvents
            Next Y
        End If
    End If
End If
EnableForm

End Sub

Private Sub cmdAlpha_Click(Index As Integer)
Dim X As Integer

For X = 0 To cmdAlpha.UBound
    If X <> Index Then
        cmdAlpha(X).Enabled = True
    End If
Next X
cmdAlpha(Index).Enabled = False
currLetter = cmdAlpha(Index).Tag
LoadAPIs
End Sub

Private Sub cmdAlpha_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
Me.MousePointer = vbDefault
End Sub

Private Sub Form_Load()

Dim X As Integer

Call EnhListView_Add_GridLines(lstAPI, False)
Call EnhListView_Add_FullRowSelect(lstAPI, False)

LoadSettings
For X = 0 To cmdAlpha.UBound
    cmdAlpha(X).Picture = ILALPHABET.ListImages(cmdAlpha(X).Tag).ExtractIcon
    cmdAlpha(X).ToolTipText = cmdAlpha(X).Tag
Next X

Me.Visible = True

End Sub

Private Sub Form_Resize()
If Me.WindowState = vbMaximized Or Me.WindowState = vbMinimized Then Exit Sub

If Me.Width <= 9420 Then
    Me.Width = 9420
End If

If Me.Height <= 8415 Then
    Me.Height = 8415
End If

lstAPI.Height = Me.ScaleHeight - lstAPI.Top - StatusBar1.Height - 120
lstAPI.Width = Me.ScaleWidth - lstAPI.Left - 120
End Sub

Private Sub Form_Unload(Cancel As Integer)
SaveSettings
Unload frmAPI
End
End Sub

Private Sub lstAPI_DblClick()
mnuViewAPI_Click
End Sub

Private Sub lstAPI_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If lstAPI.ListItems.Count <= 0 Then Exit Sub

If Button = 2 Then
    PopupMenu mnuAPI
End If

End Sub

Private Sub lstAPI_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Me.MousePointer = vbDefault
End Sub

Private Sub mnuExamples_Click()
Dim X As Integer
Dim sel As Integer

For X = 1 To lstAPI.ListItems.Count
    If lstAPI.ListItems(X).Selected = True Then
        sel = X
        Exit For
    End If
Next X

If sel > 0 Then
    frmExamples.eAPI = lstAPI.ListItems(sel).Text
    frmExamples.Show vbModal, Me
End If

End Sub

Private Sub mnuExport_Click()
Dim X As Integer
Dim sel As Integer

For X = 1 To lstAPI.ListItems.Count
    If lstAPI.ListItems(X).Selected = True Then
        sel = X
        Exit For
    End If
Next X

If sel > 0 Then
    frmAPI.currAPI = lstAPI.ListItems(sel).Text
    frmAPI.LoadAPI
    frmAPI.WindowState = vbNormal
    frmAPI.Show
    frmAPI.cmdSave_Click
End If

End Sub

Private Sub mnuRelated_Click()
Dim X As Integer
Dim sel As Integer

For X = 1 To lstAPI.ListItems.Count
    If lstAPI.ListItems(X).Selected = True Then
        sel = X
        Exit For
    End If
Next X

If sel > 0 Then
    frmRelated.tAPI = lstAPI.ListItems(sel).Text
    frmRelated.Show vbModal, Me
End If

End Sub

Private Sub mnuUpdate_Click()
On Error GoTo errhandler
frmUpdate.Show vbModal, Me

errhandler:
If UpdateCanceled = False Then
    LoadAPIs
End If
Exit Sub

End Sub

Private Sub mnuViewAPI_Click()
Dim X As Integer
Dim sel As Integer

For X = 1 To lstAPI.ListItems.Count
    If lstAPI.ListItems(X).Selected = True Then
        sel = X
        Exit For
    End If
Next X

If sel > 0 Then
    frmAPI.currAPI = lstAPI.ListItems(sel).Text
    frmAPI.LoadAPI
    frmAPI.WindowState = vbNormal
    frmAPI.Show
End If

End Sub

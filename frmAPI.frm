VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "comctl32.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "tabctl32.ocx"
Begin VB.Form frmAPI 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "frmAPI"
   ClientHeight    =   7665
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6960
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   7665
   ScaleWidth      =   6960
   Begin VB.CommandButton cmdClose 
      Caption         =   "&Close"
      Height          =   495
      Left            =   5880
      TabIndex        =   19
      Top             =   7080
      Width           =   975
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "&Save API"
      Height          =   495
      Left            =   4800
      TabIndex        =   18
      Top             =   7080
      Width           =   975
   End
   Begin ComctlLib.ListView lstExamples 
      Height          =   1215
      Left            =   3720
      TabIndex        =   10
      TabStop         =   0   'False
      Top             =   8160
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   2143
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      Enabled         =   0   'False
      NumItems        =   2
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Name"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "URL"
         Object.Width           =   2540
      EndProperty
   End
   Begin RichTextLib.RichTextBox txtAPI 
      Height          =   1215
      Left            =   120
      TabIndex        =   8
      TabStop         =   0   'False
      Top             =   8160
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   2143
      _Version        =   393217
      Enabled         =   0   'False
      TextRTF         =   $"frmAPI.frx":0000
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   6855
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6735
      _ExtentX        =   11880
      _ExtentY        =   12091
      _Version        =   393216
      Style           =   1
      Tabs            =   4
      TabsPerRow      =   4
      TabHeight       =   520
      WordWrap        =   0   'False
      TabCaption(0)   =   "Main API Information"
      TabPicture(0)   =   "frmAPI.frx":0082
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "lbl(0)"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "lblTitle"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "lbl(1)"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "lbl(2)"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "lbl(3)"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "lbl(5)"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "txtReturn"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "txtLibrary"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "txtOS"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "txtVBNETDeclare"
      Tab(0).Control(9).Enabled=   0   'False
      Tab(0).Control(10)=   "txtVBDeclare"
      Tab(0).Control(10).Enabled=   0   'False
      Tab(0).Control(11)=   "txtDescription"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).ControlCount=   12
      TabCaption(1)   =   "Parameter Information"
      TabPicture(1)   =   "frmAPI.frx":009E
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "lbl(4)"
      Tab(1).Control(1)=   "txtParameter"
      Tab(1).ControlCount=   2
      TabCaption(2)   =   "Related API's"
      TabPicture(2)   =   "frmAPI.frx":00BA
      Tab(2).ControlEnabled=   0   'False
      Tab(2).ControlCount=   0
      TabCaption(3)   =   "Examples"
      TabPicture(3)   =   "frmAPI.frx":00D6
      Tab(3).ControlEnabled=   0   'False
      Tab(3).ControlCount=   0
      Begin RichTextLib.RichTextBox txtDescription 
         Height          =   975
         Left            =   240
         TabIndex        =   11
         Top             =   960
         Width           =   6255
         _ExtentX        =   11033
         _ExtentY        =   1720
         _Version        =   393217
         BackColor       =   16777215
         Enabled         =   -1  'True
         ReadOnly        =   -1  'True
         ScrollBars      =   2
         Appearance      =   0
         TextRTF         =   $"frmAPI.frx":00F2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox txtVBDeclare 
         Height          =   495
         Left            =   240
         TabIndex        =   12
         Top             =   2400
         Width           =   6255
         _ExtentX        =   11033
         _ExtentY        =   873
         _Version        =   393217
         Enabled         =   -1  'True
         ReadOnly        =   -1  'True
         Appearance      =   0
         TextRTF         =   $"frmAPI.frx":0178
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox txtVBNETDeclare 
         Height          =   495
         Left            =   240
         TabIndex        =   13
         Top             =   3240
         Width           =   6255
         _ExtentX        =   11033
         _ExtentY        =   873
         _Version        =   393217
         Enabled         =   -1  'True
         ReadOnly        =   -1  'True
         Appearance      =   0
         TextRTF         =   $"frmAPI.frx":01FC
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox txtOS 
         Height          =   375
         Left            =   240
         TabIndex        =   14
         Top             =   4200
         Width           =   6255
         _ExtentX        =   11033
         _ExtentY        =   661
         _Version        =   393217
         BackColor       =   16777215
         Enabled         =   -1  'True
         ReadOnly        =   -1  'True
         Appearance      =   0
         TextRTF         =   $"frmAPI.frx":0283
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox txtLibrary 
         Height          =   375
         Left            =   240
         TabIndex        =   15
         Top             =   4920
         Width           =   6255
         _ExtentX        =   11033
         _ExtentY        =   661
         _Version        =   393217
         BackColor       =   16777215
         Enabled         =   -1  'True
         ReadOnly        =   -1  'True
         Appearance      =   0
         TextRTF         =   $"frmAPI.frx":0300
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox txtReturn 
         Height          =   975
         Left            =   240
         TabIndex        =   16
         Top             =   5640
         Width           =   6255
         _ExtentX        =   11033
         _ExtentY        =   1720
         _Version        =   393217
         BackColor       =   16777215
         Enabled         =   -1  'True
         ReadOnly        =   -1  'True
         ScrollBars      =   2
         Appearance      =   0
         TextRTF         =   $"frmAPI.frx":0382
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin RichTextLib.RichTextBox txtParameter 
         Height          =   5775
         Left            =   -74760
         TabIndex        =   17
         Top             =   840
         Width           =   6255
         _ExtentX        =   11033
         _ExtentY        =   10186
         _Version        =   393217
         BackColor       =   16777215
         Enabled         =   -1  'True
         ReadOnly        =   -1  'True
         ScrollBars      =   2
         Appearance      =   0
         TextRTF         =   $"frmAPI.frx":0403
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         Caption         =   "Parameter Information:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   4
         Left            =   -74760
         TabIndex        =   7
         Top             =   600
         Width           =   2310
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         Caption         =   "Return Values:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   5
         Left            =   240
         TabIndex        =   6
         Top             =   5400
         Width           =   1455
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         Caption         =   "Library:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   3
         Left            =   240
         TabIndex        =   5
         Top             =   4680
         Width           =   765
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         Caption         =   "Operating Systems Supported:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   2
         Left            =   240
         TabIndex        =   4
         Top             =   3960
         Width           =   3000
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         Caption         =   "VB.NET:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   1
         Left            =   240
         TabIndex        =   3
         Top             =   3000
         Width           =   720
      End
      Begin VB.Label lblTitle 
         AutoSize        =   -1  'True
         Caption         =   "lblTitle"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   2
         Top             =   480
         Width           =   1065
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         Caption         =   "VB:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   0
         Left            =   240
         TabIndex        =   1
         Top             =   2160
         Width           =   330
      End
   End
   Begin RichTextLib.RichTextBox txtExamples 
      Height          =   1215
      Left            =   1920
      TabIndex        =   9
      TabStop         =   0   'False
      Top             =   8160
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   2143
      _Version        =   393217
      Enabled         =   0   'False
      TextRTF         =   $"frmAPI.frx":0487
   End
End
Attribute VB_Name = "frmAPI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public currAPI As String
Public uCanceled As Boolean

Private Sub LoadSettings()
    
Me.Left = GetSetting("AllAPI", "APIView", "Left", (Screen.Width / 2) - (Me.Width / 2))
Me.Top = GetSetting("AllAPI", "APIView", "Top", (Screen.Height / 2) - (Me.Height / 2))

End Sub

Private Sub SaveSettings()

Me.WindowState = vbNormal
Call SaveSetting("AllAPI", "APIView", "Left", Me.Left)
Call SaveSetting("AllAPI", "APIView", "Top", Me.Top)

End Sub

Public Sub LoadAPI()
Dim currFile As String
Dim appPath As String
Dim currPath As String
Dim currPos
Dim lastPos
Dim currExample As String
Dim newExample As ListItem

appPath = IIf(Right(App.Path, 1) = "\", App.Path, App.Path & "\")
currPath = appPath & "API\" & UCase(Mid(currAPI, 1, 1)) & "\"
currFile = currPath & currAPI & ".api"
currPos = 1
lastPos = 0

txtAPI.LoadFile currFile, rtfText

Me.Caption = currAPI
lblTitle.Caption = currAPI

currPos = InStr(currPos, txtAPI.Text, "[DESCRIPTION]") + 15
txtDescription.Text = Mid(txtAPI.Text, currPos, InStr(currPos, txtAPI.Text, "[DECLARATION]") - currPos - 2)

currPos = InStr(currPos, txtAPI.Text, "[DECLARATION]") + 15
txtVBDeclare.Text = Mid(txtAPI.Text, currPos, InStr(currPos, txtAPI.Text, "[VBNET]") - currPos - 2)

currPos = InStr(currPos, txtAPI.Text, "[VBNET]") + 9
txtVBNETDeclare.Text = Mid(txtAPI.Text, currPos, InStr(currPos, txtAPI.Text, "[OS]") - currPos - 2)

currPos = InStr(currPos, txtAPI.Text, "[OS]") + 6
txtOS.Text = Mid(txtAPI.Text, currPos, InStr(currPos, txtAPI.Text, "[LIBRARY]") - currPos - 2)

currPos = InStr(currPos, txtAPI.Text, "[LIBRARY]") + 11
txtLibrary.Text = Mid(txtAPI.Text, currPos, InStr(currPos, txtAPI.Text, "[PARAMETERS]") - currPos - 2)

currPos = InStr(currPos, txtAPI.Text, "[PARAMETERS]") + 14
txtParameter.Text = Mid(txtAPI.Text, currPos, InStr(currPos, txtAPI.Text, "[RETURNS]") - currPos - 2)

currPos = InStr(currPos, txtAPI.Text, "[RETURNS]") + 11
txtReturn.Text = Mid(txtAPI.Text, currPos, InStr(currPos, txtAPI.Text, "[EXAMPLES]") - currPos - 2)

currPos = InStr(currPos, txtAPI.Text, "[EXAMPLES]") + 12
txtExamples.Text = ReplaceInString(Mid(txtAPI.Text, currPos, InStr(currPos, txtAPI.Text, "[RELATED]") - currPos - 2), "|", vbCrLf)
txtExamples.Text = Trim$(txtExamples.Text)

currPos = 1
lastPos = 0

lstExamples.ListItems.Clear
For X = 1 To Len(txtExamples.Text)
    If Mid(txtExamples.Text, X, 1) = "|" Then
        currExample = Mid(txtExamples.Text, currPos, X - lastPos - 1)
        Set newExample = lstExamples.ListItems.Add(, , Mid(currExample, 1, InStr(1, currExample, "*") - 1))
        newExample.SubItems(1) = Mid(currExample, InStr(1, currExample, "*") + 1)
        currPos = X + 1
        lastPos = X
    ElseIf X = Len(txtExamples.Text) Then
        currExample = Mid(txtExamples.Text, currPos)
        Set newExample = lstExamples.ListItems.Add(, , Mid(currExample, 1, InStr(1, currExample, "*") - 1))
        newExample.SubItems(1) = Mid(currExample, InStr(1, currExample, "*") + 1)
    End If
Next X


End Sub


Private Sub cmdClose_Click()
Unload Me
End Sub

Public Sub cmdSave_Click()
On Error GoTo HELL

With frmMain.cd1
.Filter = "API Document (.txt)|*.txt"
.CancelError = True
.ShowSave

If Trim$(.FileName) <> "" Then
    If FileExists(Trim$(.FileName)) = True Then
        If MsgBox(Trim$(.FileName) & " already exists.  Would you like to overwrite it?", vbYesNo + vbQuestion) = vbNo Then Exit Sub
    End If
    
    Open Trim$(.FileName) For Output As #1
    Print #1, "==================================="
    Print #1, "=====       AllAPI v1.0       ====="
    Print #1, "==================================="
    Print #1, ""
    Print #1, UCase(lblTitle.Caption)
    Print #1, txtDescription.Text
    Print #1, ""
    Print #1, ""
    Print #1, "== VB ============================="
    Print #1, txtVBDeclare.Text
    Print #1, "==================================="
    Print #1, ""
    Print #1, "== VB.NET ========================="
    Print #1, txtVBNETDeclare.Text
    Print #1, "==================================="
    Print #1, ""
    Print #1, "== PARAMETER INFO ================="
    Print #1, txtParameter.Text
    Print #1, "==================================="
    Print #1, ""
    Print #1, "== OS ============================="
    Print #1, txtOS.Text
    Print #1, "==================================="
    Print #1, ""
    Print #1, "== LIBRARY ========================"
    Print #1, txtLibrary.Text
    Print #1, "==================================="
    Print #1, ""
    Print #1, "== RETURN VALUES =================="
    Print #1, txtReturn.Text
    Print #1, "==================================="
    Close #1
End If
End With

MsgBox "API Saved Successfully.", vbInformation
Exit Sub

HELL:
If Err.Number = 32755 Then
    Exit Sub
Else
    MsgBox "ERROR: " & Err.Number & " - " & Err.Description
End If


End Sub

Private Sub Form_Load()
Me.Icon = frmMain.Icon
LoadSettings
End Sub

Private Sub Form_Unload(Cancel As Integer)
SaveSettings
End Sub

Private Sub SSTab1_Click(PreviousTab As Integer)
Dim X As Integer
Dim newExample As ListItem

If SSTab1.Tab = 2 Then
    SSTab1.Tab = PreviousTab
   
    frmRelated.tAPI = currAPI
    frmRelated.Show vbModal, Me
    
    If uCanceled = False Then
        frmMain.lstAPI.SetFocus
    Else
        uCanceled = False
    End If
End If

If SSTab1.Tab = 3 Then
    SSTab1.Tab = PreviousTab
    If lstExamples.ListItems.Count <= 0 Then MsgBox currAPI & " contains no examples.", vbInformation: Exit Sub
    
    frmExamples.eAPI = currAPI
    frmExamples.Show vbModal, Me
End If

End Sub



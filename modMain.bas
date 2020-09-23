Attribute VB_Name = "modMain"
'===           THE REPLACE AND MAKEDIR FUNCTIONS ARE NOT MINE.             ==='
'===            I CANNOT REMEMBER WHO THE ORIGINAL AUTHOR WAS              ==='
'===   SO I AM SORRY I CANNOT GIVE THE PROPER CREDIT FOR THESE FUNCTIONS   ==='

Public Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Public Declare Function PathFileExists Lib "shlwapi.dll" Alias "PathFileExistsA" (ByVal pszPath As String) As Long

Public Function FileExists(tFile As String) As Boolean
If CBool(PathFileExists(Trim$(tFile))) = True Then
    FileExists = True
Else
    FileExists = False
End If
End Function

Public Function ReplaceInString(tString, tReplace, tFind) As String
    Dim X
    X = 1
    Do While InStr(X, tString, tFind, vbTextCompare) <> 0
        ReplaceInString = ReplaceInString & Mid(tString, X, InStr(X, tString, tFind, vbTextCompare) - X) & tReplace
        X = InStr(X, tString, tFind, vbTextCompare) + Len(tFind)
    Loop
    ReplaceInString = ReplaceInString & Right(tString, Len(tString) - X + 1)
End Function

Public Function MakeDir(Path As String) As Boolean
    On Error Resume Next
    Dim o_strRet As String
    Dim o_intItems As Integer
    Dim o_vntItem As Variant
    Dim o_strItems() As String
    o_strItems() = Split(Path, "\")
    o_intItems = 0

    For Each o_vntItem In o_strItems()
        o_intItems = o_intItems + 1
        If o_intItems = 1 Then
            o_strRet = o_vntItem
        Else
            o_strRet = o_strRet & "\" & o_vntItem
            MkDir o_strRet
        End If
    Next
    MakeDir = (Err.Number = 0)
End Function


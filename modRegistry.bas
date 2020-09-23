Attribute VB_Name = "modRegistry"
'=== THIS CODE IS NOT MINE.  I CANNOT REMEMBER WHO THE ORIGINAL AUTHOR WAS ==='
'===    SO I AM SORRY I CANNOT GIVE THE PROPER CREDIT FOR THIS MODULE.     ==='

Option Explicit
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
Private Declare Function RegCreateKeyEx Lib "advapi32.dll" Alias "RegCreateKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal Reserved As Long, ByVal lpClass As String, ByVal dwOptions As Long, ByVal samDesired As Long, ByVal lpSecurityAttributes As Long, phkResult As Long, lpdwDisposition As Long) As Long
Private Declare Function RegOpenKeyEx Lib "advapi32.dll" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
Private Declare Function RegSetValueExString Lib "advapi32.dll" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
Private Declare Function RegQueryValueEx Lib "advapi32" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, ByRef lpType As Long, ByVal lpData As String, ByRef lpcbData As Long) As Long
    Private Const REG_SZ As Long = 1
    Private Const HKEY_LOCAL_MACHINE = &H80000002
    Private Const KEY_ALL_ACCESS = &H3F
    Private Const REG_OPTION_NON_VOLATILE = 0

Public Function GetSetting(AppName As String, Section As String, Key As String, Optional Default As String = "") As String
    Dim Text As String
    Dim Results As Long
    Dim BufferLen As Long
    Dim Handle As Long
    Results = RegOpenKeyEx(HKEY_LOCAL_MACHINE, "Software\" & AppName & "\" & Section, 0&, KEY_ALL_ACCESS, Handle)


    If Results <> 0 Then
        GetSetting = Default
        Exit Function
    End If
    Text = String(255, vbNullChar)
    BufferLen = Len(Text)
    Results = RegQueryValueEx(Handle, Key, 0&, REG_SZ, ByVal Text, BufferLen)


    If Results <> 0 Then
        GetSetting = Default
        Exit Function
    End If
    RegCloseKey Handle


    If (Left(Text, 1) = vbNullChar) Then
        GetSetting = Default
        Exit Function
    Else


        If (InStr(1, Text, vbNullChar) > 0) Then
            Text = Left(Text, InStr(1, Text, vbNullChar) - 1)
        End If
    End If
    GetSetting = Text
End Function

Public Sub SaveSetting(AppName As String, Section As String, Key As String, Setting As String)
    Dim hKey As Long
    Dim RetVal As Long
    RetVal = RegCreateKeyEx(HKEY_LOCAL_MACHINE, "Software\" & AppName & "\" & Section, 0&, vbNullString, REG_OPTION_NON_VOLATILE, KEY_ALL_ACCESS, 0&, 0&, hKey)


    If RetVal <> 0 Then
        'MsgBox "Insufficient rights to change s
        '     ettings.", vbOKOnly + vbInformation
        Exit Sub
    End If
    RegOpenKeyEx HKEY_LOCAL_MACHINE, "Software\" & AppName & "\" & Section, 0&, KEY_ALL_ACCESS, hKey
    RegSetValueExString hKey, Key, 0&, REG_SZ, Setting, Len(Setting)
    RegCloseKey hKey
End Sub


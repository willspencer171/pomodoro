set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run "cmd /c start /min pomodoro.bat " & WScript.Arguments(0) & " " & WScript.Arguments(1) & " " & WScript.Arguments(2), 0, False
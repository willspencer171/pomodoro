set WshShell = WScript.CreateObject("WScript.Shell")

WshShell.Popup WScript.Arguments(0), 0, "Pomodoro Timer", vbInformation+vbSystemModal

Set WshShell = Nothing
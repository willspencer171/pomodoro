@echo off

set /a work_time=%1
set /a break_time=%2
set /a cycles=%3

set /a work_time_seconds=%work_time%*60
set /a break_time_seconds=%break_time%*60


:loop
for /l %%i in (1,1,%cycles%) do (
    start "" /B wscript popup.vbs "Working for %work_time% minutes..."
    timeout /T %work_time_seconds% >nul
    start "" /B wscript popup.vbs "Time for a break! Take %break_time% minutes to chill out"
    timeout /T %break_time_seconds% >nul
)

start "" /B wscript popup.vbs "Pomodoro timer finished."
exit

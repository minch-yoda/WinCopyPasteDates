echo off
set FULLPATH=%1
set FOLDER=%2
set FILNAME=%~nx1
set WINCPD=%TMP%\WinCPD

del /F /Q "%WINCPD%\DATES"
robocopy "%FOLDER%" "%WINCPD%" "%FILNAME%" /COPY:T /DCOPY:T /CREATE
rename "%WINCPD%\%FILNAME%" "DATES"

:pause
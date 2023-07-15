@echo off

title CHEKCFG - Simple specifications viewer in CMD
color b

echo.
echo 	CHEKCFG - Simple specifications viewer in CMD
echo 	Made by Lucas Gabriel (lucmsilva)
echo.
echo 	Follow my YouTube channel:
echo 	https://www.youtube.com/@lucmsilvagg
echo.
echo 	------------------------------------------
echo.
echo 	Main computer info:
echo.
echo 	OneDrive folder: %OneDrive%
echo 	App Data folder (AppData): %APPDATA%
echo 	Temporary folder: %TEMP%
echo 	Executable formats: %PATHEXT%
echo 	Operating System: %OS%
echo 	Computer Name: %COMPUTERNAME%
echo 	System Drive: %SystemDrive%
echo 	System Root: %SystemRoot%
echo 	Drive Path: %HOMEDRIVE%\
echo 	User Path: %HOMEPATH%
echo 	UP + DP: %HOMEDRIVE%%HOMEPATH%
echo 	Public User Directory: %PUBLIC%
echo 	Username: %USERNAME%
echo 	Logon Server: %LOGONSERVER%
echo 	LS + Username: %USERNAME%%LOGONSERVER%
echo.
echo 	------------------------------------------
echo 	Click Enter to see processor info...
pause >nul
cls
echo.
echo 	Processor information:
echo.
echo 	Number of processors: %NUMBER_OF_PROCESSORS%
echo 	Architeture: %PROCESSOR_ARCHITECTURE%
echo 	Identifier: %PROCESSOR_IDENTIFIER%
echo 	Revision: %PROCESSOR_REVISION%
echo.
echo 	------------------------------------------
echo.
echo 	Click Enter to see netstat info...
pause >nul
cls
netstat -an
echo.
echo 	------------------------------------------
echo.
echo 	Click Enter to see more detailed general info...
pause >nul
cls
systeminfo
echo.
echo 	------------------------------------------
echo.
echo 	Click Enter to exit...
pause >nul
cls
pause >nul

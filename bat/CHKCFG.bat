@echo off
chcp 65001 >nul

title CHKCFG ^<User: %USERNAME%^>
echo 	CHKCFG ^<User: %USERNAME%^>
echo 	Made by Lucas Gabriel (lucmsilva)
echo 	------------------------------------------
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
echo 	------------------------------------------
echo 	Processor information:
echo.
echo 	Number of processors: %NUMBER_OF_PROCESSORS%
echo 	Architeture: %PROCESSOR_ARCHITECTURE%
echo 	Identifier: %PROCESSOR_IDENTIFIER%
echo 	Revision: %PROCESSOR_REVISION%
echo 	------------------------------------------
echo.
pause >nul
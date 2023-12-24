@echo off
chcp 65001 >nul

set serialnumber=
set manufacturer=
set osname=
set model=
FOR /F "tokens=2 delims='='" %%A in ('wmic Bios Get SerialNumber /value') do SET serialnumber=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic ComputerSystem Get Manufacturer /value') do SET manufacturer=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic os get Name /value') do SET osname=%%A
FOR /F "tokens=1 delims='|'" %%A in ("%osname%") do SET osname=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic ComputerSystem Get Model /value') do SET model=%%A

:main
title CHKCFG [User: %USERNAME%]
echo.
echo 	CHKCFG [User: %USERNAME%]
echo 	2023 Lucas Gabriel (lucmsilva)
echo 	-------------------------------------------------
echo 	Main computer info: [Updates every ~1 sec.]
echo.
echo 	Date + Time: %DATE% ^|^ %TIME%
echo 	Computer Name: %COMPUTERNAME%
echo 	Username: %USERNAME%
echo 	User Path: %USERPROFILE%
echo 	App Data: %APPDATA%
echo 	Local App Data: %LOCALAPPDATA%
echo 	Temporary folder: %TEMP%
echo 	Public User folder: %PUBLIC%
echo 	Manufacturer: %MANUFACTURER%
echo 	Model: %MODEL%
echo 	Serial Number: %SERIALNUMBER%
echo 	Operating System: %OSNAME%
echo 	System Drive: %SystemDrive%\
echo 	System Root: %SystemRoot%
echo 	Program Files: %ProgramFiles% ^|^ %ProgramFiles(x86)%
echo 	-------------------------------------------------
echo 	Processor information:
echo.
echo 	Number of processors (cores): %NUMBER_OF_PROCESSORS%
echo 	Architeture: %PROCESSOR_ARCHITECTURE%
echo 	Identifier: %PROCESSOR_IDENTIFIER%
echo 	Revision: %PROCESSOR_REVISION%
echo 	-------------------------------------------------
timeout /t 1 /nobreak >nul
cls
goto main
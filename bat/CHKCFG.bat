@echo off
chcp 65001 >nul

FOR /F "tokens=2 delims='='" %%A in ('wmic BASEBOARD GET SERIALNUMBER /value') do SET serialnumber=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic BASEBOARD GET MANUFACTURER /value') do SET manufacturer=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic OS GET NAME /value') do SET osname=%%A
FOR /F "tokens=1 delims='|'" %%A in ("%OSNAME%") do SET osname=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic COMPUTERSYSTEM GET MODEL /value') do SET model=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic BIOS GET SMBIOSBIOSVersion /value') do SET biosver=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic COMPUTERSYSTEM GET SYSTEMTYPE /value') do SET systype=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic BASEBOARD GET PRODUCT /value') do SET mbproduct=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic BASEBOARD GET VERSION /value') do SET mbvariant=%%A
FOR /F "tokens=2 delims='='" %%A in ('wmic OS GET WINDOWSDIRECTORY /value') do SET windowsdir=%%A

:main
title CHKCFG [User: %USERNAME%]
echo.
echo 	CHKCFG [User: %USERNAME%]
echo 	2023 Lucas Gabriel (lucmsilva)
echo 	-------------------------------------------------
echo 	Main computer info: [Updates every ~1 sec.]
echo.
echo 	Date + Time: %DATE% ▪ %TIME%
echo 	Username: %USERNAME% ▪ User Path: %USERPROFILE%
echo 	Computer Name: %COMPUTERNAME%
echo 	Manufacturer: %MANUFACTURER% ▪ Model: %MODEL%
echo 	Serial Number: %SERIALNUMBER% ▪ BIOS Version: %BIOSVER%
echo 	Motherboard Model: %MBPRODUCT% ▪ Variant: %MBVARIANT%
echo 	System Drive: %SystemDrive%\ ▪ System Root: %WINDOWSDIR%
echo 	Program Files: %ProgramFiles% ▪ %ProgramFiles(x86)%
echo 	Operating System: %OSNAME%
echo 	-------------------------------------------------
echo 	Processor information:
echo.
echo 	Number of processors (cores): %NUMBER_OF_PROCESSORS%
echo 	System Type: %SYSTYPE%
echo 	Identifier: %PROCESSOR_IDENTIFIER%
echo 	Revision: %PROCESSOR_REVISION%
echo 	-------------------------------------------------
timeout /t 1 /nobreak >nul
cls
goto main
@echo off
if %wocm%==true (
	goto startup
) else (
	../main
	exit
)
:startup
title WindowsOnClassManager v%wocmver% by wyf9 - Check Update
echo Checking Update...
if exist data\ver.txt del data\ver.txt>nul
echo Update Check URL: https://wyf01239.github.io/webget/wocm/ver.txt
curl -s -o "data\ver.txt" "https://wyf01239.github.io/webget/wocm/ver.txt">nul
if not exist data\ver.txt (
	echo Check Update Failed.
	goto end
)
set /p newver=<data\ver.txt
echo Now version: %wocmver%
echo Newest version: %newver%
if "%wocmver%"=="%newver%" (
	echo No New Version.
) else (
	echo Have New Version.
	echo https://github.com/wyf01239/WinOnClassManager
)
:end
@echo off
if %wocm%==true (
	goto startup
) else (
	../main
	exit
)
:startup
title WindowsOnClassManager v%wocmver% by wyf9 - Get Notice
echo Getting Notice...
if exist data\notice.txt del data\notice.txt>nul
echo Get Notice URL: https://wyf01239.github.io/webget/wocm/notice.txt
curl -s -o "data\notice.txt" "https://wyf01239.github.io/webget/wocm/notice.txt">nul
if not exist data\notice.txt (
	echo Get Notice Failed.
	goto end
)
echo Notice:
echo ----------------
type data\notice.txt
echo.
echo ----------------
:end
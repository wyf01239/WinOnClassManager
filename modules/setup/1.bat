@echo off
if %wocm%==true (
	goto startup
) else (
	../main
	exit
)
:startup
title WindowsOnClassManager v%wocmver% by wyf9 - Setup Options #1

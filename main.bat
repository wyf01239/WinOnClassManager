@echo off
:startup
set wtest
set wdir=%~dp0
cd %wdir%
echo Program Dir: %wdir%
set wocm=true
set wocmver=0.1-202302251
title WindowsOnClassManager v%wocmver% by wyf9
echo WindowsOnClassManager v%wocmver% by wyf9
echo Weicome!
echo ================
echo Module - Check update
call %wdir%modules\checkupdate.bat
title WindowsOnClassManager v%wocmver% by wyf9
echo ================
echo Module - Get notice
call %wdir%modules\notice.bat
title WindowsOnClassManager v%wocmver% by wyf9
:udisk
echo 请输入 U 盘的盘符(仅字母):
:udisk2
set udksk=null
set /p udisk=
if exist %udisk%:\ (
	echo 选定操作盘: %udisk%:
	goto next
) else (
	echo 输入错误或路径不存在, 请重新输入.
	goto udisk2
)
:next
echo ================
echo U 盘: %udisk%:
if exist %udisk%:\.wyf9\wocm\status.txt (
	echo U 盘部署状态: True
) else (
	echo U 盘部署状态: False
)
:choose
echo ================
echo 请选择:
echo 0. 退出程序
echo 1. 功能列表
echo 2. 进入安装流程
echo 3. 进入卸载流程
:choose2
set choose=null
set /p choose=    - 
if "%choose%"=="0" goto end
if "%choose%"=="1" goto options
if "%choose%"=="2" goto setup
if "%choose%"=="3" goto uninst
goto choose2
:setup
echo ================
echo Module - Setup options
call %wdir%modules\setup.bat
goto choose
:uninst
echo ================
echo Module - Uninstall options
call %wdir%modules\uninst.bat
goto choose
:end
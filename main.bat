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
echo ������ U �̵��̷�(����ĸ):
:udisk2
set udksk=null
set /p udisk=
if exist %udisk%:\ (
	echo ѡ��������: %udisk%:
	goto next
) else (
	echo ��������·��������, ����������.
	goto udisk2
)
:next
echo ================
echo U ��: %udisk%:
if exist %udisk%:\.wyf9\wocm\status.txt (
	echo U �̲���״̬: True
) else (
	echo U �̲���״̬: False
)
:choose
echo ================
echo ��ѡ��:
echo 0. �˳�����
echo 1. �����б�
echo 2. ���밲װ����
echo 3. ����ж������
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
@echo off
if %wocm%==true (
	goto startup
) else (
	../main
	exit
)
:startup
title WindowsOnClassManager v%wocmver% by wyf9 - Setup Options
:choose
echo 0. 返回
echo 顺序从上到下; - xxx 代表不是可用选项, 但是你必须完成这些步骤
echo 一般安装步骤:
echo  - 将要部署的 U 盘插入这台电脑
echo  - 启动此程序
echo  - 输入 U 盘的盘符
echo 1. 部署程序到 U 盘
echo  - 将 U 盘插入到目标电脑
echo  - 启动 U 盘根目录中的 "WOCMSetupStep1.bat"
echo 2. 检测系统信息 (不包含任何隐私数据)
echo  - 将 U 盘插入这台电脑
echo  - 再次启动此程序, 并输入 U 盘盘符
echo 3. 确定符合安装条件
echo 4. 部署程序到目标电脑
echo  - 再次将 U 盘插入到目标电脑
echo  - 启动 U 盘根目录中的 "WOCMSetupStep2.bat"
echo  - 完成安装.
echo 请选择步骤:
:choose2
set /p choose=    - 
if "%choose%"==“0” goto end
if "%choose%"==“1” goto setup1
if "%choose%"==“2” goto setup2
if "%choose%"==“3” goto setup3
if "%choose%"==“4” goto setup4
goto choose2
:setup1
echo ================
echo Module - Setup option #1
call modules\setup\1.bat
goto choose
:setup2
echo ================
echo Module - Setup option #2
call modules\setup\2.bat
goto choose
:setup3
echo ================
echo Module - Setup option #3
call modules\setup\3.bat
goto choose
:setup4
echo ================
echo Module - Setup option #4
call modules\setup\4.bat
goto choose
:end
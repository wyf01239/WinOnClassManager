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
echo 0. ����
echo ˳����ϵ���; - xxx �����ǿ���ѡ��, ��������������Щ����
echo һ�㰲װ����:
echo  - ��Ҫ����� U �̲�����̨����
echo  - �����˳���
echo  - ���� U �̵��̷�
echo 1. ������� U ��
echo  - �� U �̲��뵽Ŀ�����
echo  - ���� U �̸�Ŀ¼�е� "WOCMSetupStep1.bat"
echo 2. ���ϵͳ��Ϣ (�������κ���˽����)
echo  - �� U �̲�����̨����
echo  - �ٴ������˳���, ������ U ���̷�
echo 3. ȷ�����ϰ�װ����
echo 4. �������Ŀ�����
echo  - �ٴν� U �̲��뵽Ŀ�����
echo  - ���� U �̸�Ŀ¼�е� "WOCMSetupStep2.bat"
echo  - ��ɰ�װ.
echo ��ѡ����:
:choose2
set /p choose=    - 
if "%choose%"==��0�� goto end
if "%choose%"==��1�� goto setup1
if "%choose%"==��2�� goto setup2
if "%choose%"==��3�� goto setup3
if "%choose%"==��4�� goto setup4
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
@echo ��װPython����������⣬����뻥������
@echo off
set "FileName=PIP3.6.EXE"
echo ��������Python pip��װ·�������Ժ�...
for %%a in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist %%a:\nul (
        pushd %%a:\
        for /r %%b in ("*%FileName%") do (
            if /i "%%~nxb" equ "%FileName%" (
                echo.Python pip��װ·�����£�
                echo.%%b
                set pippath=%%b
            )
        )
        popd
    )
)
echo.���ڼ���Python����������⣬���Ժ�...
"%pippath%" install openpyxl
"%pippath%" install requests
"%pippath%" install xlrd
"%pippath%" install pyinstaller
echo.��װ��ɣ�
pause
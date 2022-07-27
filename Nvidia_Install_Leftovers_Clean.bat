CLS=new ActiveXObject("Shell.Application").ShellExecute("\""+WScript.ScriptFullName+"\"","","","runas",1);/*&title Nvidia_Install_Leftovers_Clean&echo.&echo   Requesting Admin Privileges....&echo   Press "Yes" to Run as Admin&NET FILE>NUL 2>&1||(CSCRIPT //B //E:JSCRIPT %0&EXIT /B)
cls

@echo off

set List="%programfiles%\NVIDIA Corporation\Installer2\*" "%programfiles(x86)%\NVIDIA Corporation\Installer2\*"

for /d %%a in (%List%) do (
rmdir /s /q "%%a"
)

for %%a in (%List%) do (
del /f /q "%%a.*"
)

echo.
echo  COMPLETED!
timeout 2 >nul

:*/
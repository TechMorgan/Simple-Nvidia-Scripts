CLS=new ActiveXObject("Shell.Application").ShellExecute("\""+WScript.ScriptFullName+"\"","","","runas",1);/*&NET FILE>NUL 2>&1||(CSCRIPT //B //E:JSCRIPT %0&EXIT /B)

@echo off
@setlocal enableextensions enabledelayedexpansion

mode con: cols=95 lines=45

echo.
echo  Rule Name: Nvidia
timeout 1 >nul
echo.
echo.
echo  Blocking %programfiles%\NVIDIA Corporation
set way=%programfiles%\NVIDIA Corporation
call :check

echo.
echo.
echo  Blocking %programfiles(x86)%\NVIDIA Corporation
set way=%programfiles(x86)%\NVIDIA Corporation
call :check

echo.
for /f %%i in ('dir /b /ad %WinDir%\System32\DriverStore\FileRepository\* ^| findstr /i nv_dispsi') do (
set way=%WinDir%\System32\DriverStore\FileRepository\%%i
echo  Blocking %WinDir%\System32\DriverStore\FileRepository\%%i
call :check
)
echo.
echo  COMPLETED...!!
echo.
timeout 2 >nul
exit

:check
echo.
timeout 1 >nul
if not exist "%way%" echo  Skipping....Folder does not exist& echo. & goto :eof
cd /d !way!
dir /s /a-d *.exe >nul 2>&1
if errorlevel 1 (
echo  Skipping....No EXE file exists
goto :eof
)
timeout 1 >nul

for /R %%f in ("*.exe") do @echo  %%~nxf

for /R %%a in ("*.exe") do (
netsh advfirewall firewall add rule name="Nvidia" dir=out program="%%a" action=block >nul
netsh advfirewall firewall add rule name="Nvidia" dir=in program="%%a" action=block >nul
)

:*/
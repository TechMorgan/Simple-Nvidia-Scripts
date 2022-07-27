@echo off

del /q "%programdata%\NVIDIA Corporation\NV_Cache\*"
for /d %%x in ("%localappdata%\NVIDIA\GLCache\*") do @rd /s /q "%%x"

echo.
echo  COMPLETED!
timeout 2 >nul

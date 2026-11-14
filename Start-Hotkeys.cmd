@echo off
chcp 65001 >nul
setlocal
echo Requires AutoHotkey v1.1 / Requer AutoHotkey v1.1.
echo Do not start another copy if this script is already running.
echo Nao abra outra copia se o script ja estiver em execucao.
echo These hotkeys are global / Estes atalhos sao globais.
choice /C YN /N /M "Start / Iniciar? Y=Sim N=Nao: "
if errorlevel 2 exit /b 0
if not exist "%~dp0hotkeys\Rolagem DaVinci.ahk" goto missing
start "" "%~dp0hotkeys\Rolagem DaVinci.ahk"
echo If it did not run, open the script with AutoHotkey v1.1.
echo Se nao executou, abra com AutoHotkey v1.1.
pause
exit /b 0
:missing
echo Extract the complete ZIP / Extraia o ZIP completo.
pause
exit /b 1

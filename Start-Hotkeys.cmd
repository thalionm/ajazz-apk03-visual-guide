@echo off
setlocal DisableDelayedExpansion
set "AHK_EXE=%ProgramFiles%\AutoHotkey\AutoHotkeyU64.exe"
if not exist "%AHK_EXE%" set "AHK_EXE=%ProgramFiles%\AutoHotkey\AutoHotkeyU32.exe"
if not exist "%AHK_EXE%" goto missing
if not exist "%~dp0hotkeys\Rolagem DaVinci.ahk" goto missing
echo AutoHotkey v1.1.33+ required. Global hotkeys. No administrator rights needed.
echo Requer AutoHotkey v1.1.33+. Atalhos globais. Nao executar como administrador.
"%SystemRoot%\System32\choice.exe" /C YN /N /M "Start / Iniciar? Y=Sim N=Nao: "
if errorlevel 2 exit /b 0
"%AHK_EXE%" "%~dp0hotkeys\Rolagem DaVinci.ahk"
exit /b %errorlevel%
:missing
echo Interpreter or script missing. Install AutoHotkey from autohotkey.com.
echo Interpretador ou script ausente. Instale AutoHotkey do site oficial.
echo Custom installation: open the script explicitly with your trusted v1.1 interpreter.
pause
exit /b 1

@echo off
"%SystemRoot%\System32\chcp.com" 65001 >nul
setlocal DisableDelayedExpansion
title AJAZZ - Native scene import assistant
:menu
cls
echo AJAZZ - Import one scene / Importar uma cena
echo.
echo Finish each import in AJAZZ before selecting another scene.
echo Conclua cada importacao no AJAZZ antes de selecionar outra.
echo.
echo 1. Canva.SDProfile
echo 2. Chrome.SDProfile
echo 3. Consola de música.SDProfile
echo 4. Controlar Windows.SDProfile
echo 5. DaVinci Resolve.SDProfile
echo 6. Deezer.SDProfile
echo 7. Photoshop.SDProfile
echo 8. VLC.SDProfile
echo 9. WMP.SDProfile
echo 0. Exit / Sair
echo.
"%SystemRoot%\System32\choice.exe" /C 1234567890 /N /M "Select / Escolha: "
if errorlevel 10 goto done
if errorlevel 9 goto scene9
if errorlevel 8 goto scene8
if errorlevel 7 goto scene7
if errorlevel 6 goto scene6
if errorlevel 5 goto scene5
if errorlevel 4 goto scene4
if errorlevel 3 goto scene3
if errorlevel 2 goto scene2
if errorlevel 1 goto scene1
:scene1
set "SCENE=%~dp0scenes\Canva\Profile.SDProfile"
goto import
:scene2
set "SCENE=%~dp0scenes\Chrome\Profile.SDProfile"
goto import
:scene3
set "SCENE=%~dp0scenes\Music-Console\Profile.SDProfile"
goto import
:scene4
set "SCENE=%~dp0scenes\Windows\Profile.SDProfile"
goto import
:scene5
set "SCENE=%~dp0scenes\DaVinci-Resolve\Profile.SDProfile"
goto import
:scene6
set "SCENE=%~dp0scenes\Deezer\Profile.SDProfile"
goto import
:scene7
set "SCENE=%~dp0scenes\Photoshop\Profile.SDProfile"
goto import
:scene8
set "SCENE=%~dp0scenes\VLC\Profile.SDProfile"
goto import
:scene9
set "SCENE=%~dp0scenes\WMP\Profile.SDProfile"
goto import
:import
if not exist "%SCENE%" goto missing
echo.
echo Opening / Abrindo: "%SCENE%"
start "" "%SCENE%"
if errorlevel 1 goto manual
echo Complete the import in AJAZZ. Opening does not confirm installation.
echo Conclua no AJAZZ. A abertura nao confirma a instalacao.
echo If import did not open, use AJAZZ Import and select the file above.
echo Se nao abriu, use Importar no AJAZZ e selecione o arquivo acima.
pause
goto menu
:manual
echo Use the native Import command in AJAZZ and select the scene.
echo Use Importar no AJAZZ e selecione a cena.
start "" "%~dp0scenes"
pause
goto menu
:missing
echo Missing file. Extract the complete ZIP before running this assistant.
echo Arquivo ausente. Extraia todo o ZIP antes de executar.
pause
goto menu
:done
endlocal
exit /b 0

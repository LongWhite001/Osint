@echo off

chcp 65001 >nul
title Safe Spray
:: Função para escrever texto lentamente
setlocal enabledelayedexpansion
set "texto=Loading.System.please.wait"
for /l %%i in (0,1,28) do (
set "char=!texto:~%%i,1!"
<nul set /p="!char!"
ping -n 1 -w 120 localhost >nul
)
echo.
timeout /t 5 >nul
cls

chcp 65001 >nul
:: Função para escrever texto lentamente
setlocal enabledelayedexpansion
set "texto=full.charging"
for /l %%i in (0,1,15) do (
set "char=!texto:~%%i,1!"
<nul set /p="!char!"
ping -n 1 -w 120 localhost >nul
)
echo.
timeout /t 3 >nul
cls

chcp 65001 >nul
:: Função para escrever texto lentamente
setlocal enabledelayedexpansion
set "texto=Open.system.in.Browser"
for /l %%i in (0,1,24) do (
set "char=!texto:~%%i,1!"
<nul set /p="!char!"
ping -n 1 -w 120 localhost >nul
)
echo.
timeout /t 3 >nul
cls


start chrome.exe https://safe-spray.vercel.app/
timeout /t 5 >nul

echo ::
echo ===============================================================
echo Se o Navegador Google Chrome não tiver Instalado Pressione S.
echo ele Iniciara no Microsoft Edge.
echo Caso contrario Pressione N.
echo ===============================================================
echo ::

timeout /t 10 >nul
echo Do you want to open the system in the Microsoft Edge browser?
choice /C SNC /M "Pressione: [S]im, [N]ao ou [C]ancelar"
IF errorlevel=3 goto CANCELAR
IF errorlevel=2 goto NAO
IF errorlevel=1 goto SIM
:CANCELAR
exit
:SIM
start msedge.exe https://safe-spray.vercel.app/
echo O usuario pressionou [S]
@pause
goto :CANCELAR
:NAO
echo O usuario pressionou [N]
@pause
goto :CANCELAR
pause


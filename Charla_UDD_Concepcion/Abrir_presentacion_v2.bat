@echo off
rem Levanta un servidor local y abre la presentación en el navegador.
rem Necesario para que YouTube permita reproducir los videos (no funciona desde file://).
cd /d "%~dp0"
start "" http://localhost:8765/Charla_UDD_Concepcion_v2.html
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0servidor_v2.ps1"

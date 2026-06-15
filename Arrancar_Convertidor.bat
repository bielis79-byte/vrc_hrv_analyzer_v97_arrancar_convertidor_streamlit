@echo off
title Convertidor HRV HTML a PNG

echo ============================================================
echo  VRC / HRV RRi Analyzer Pro - Convertidor HTML/Localhost a PNG
echo ============================================================
echo.
echo Este arrancador funciona desde cualquier carpeta porque usa %%~dp0.
echo.

echo Abriendo Streamlit local en el navegador...
start "" "http://localhost:8501/"

echo.
echo Esperando a que cargue la app...
timeout /t 5 >nul

echo.
echo Generando captura PNG de http://localhost:8501/ ...
python "%~dp0capture_streamlit_localhost_png.py" "http://localhost:8501/" "%~dp0captura_streamlit.png"

echo.
echo Si quieres convertir los HTML exportados a PNG, ejecutando ahora:
python "%~dp0convert_html_to_png.py"

echo.
echo ============================================================
echo  Proceso terminado.
echo  Captura principal:
echo  %~dp0captura_streamlit.png
echo.
echo  PNG desde HTML, si existen:
echo  %~dp0graficos\png_from_html
echo ============================================================
echo.
pause

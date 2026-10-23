@echo off
REM =========================================================================
REM Script para crear SOLO la estructura de directorios y archivos vacios
REM =========================================================================

echo.
echo ===================================================
echo   Creando SOLO la estructura del proyecto...
echo ===================================================
echo.

set PROJ_DIR=proyecto_factory_python

REM 1. Crear directorio principal
if not exist "%PROJ_DIR%" (
    mkdir "%PROJ_DIR%"
    echo [+] Directorio principal '%PROJ_DIR%' creado.
) else (
    echo [!] El directorio '%PROJ_DIR%' ya existe.
)

cd "%PROJ_DIR%"

REM 2. Crear subdirectorio notificaciones
if not exist "notificaciones" (
    mkdir "notificaciones"
    echo [+] Subdirectorio 'notificaciones' creado.
)

REM 3. Crear archivos vacios
type nul > "notificaciones\__init__.py"
type nul > "notificaciones\base.py"
type nul > "notificaciones\servicios.py"
type nul > "notificaciones\factory.py"
type nul > "main.py"
type nul > ".gitignore"
type nul > "README.md"

echo [+] Archivos de estructura creados correctamente (vacios).

echo.
echo ===================================================
echo   Estructura generada exitosamente en %CD%
echo ===================================================
echo.
pause

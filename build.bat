@echo off

REM Eliminar carpetas de cache
rmdir /s /q "%CD%\src\minecraft_launcher_custom\__pycache__"
if %errorlevel% neq 0 (
    echo No hay carpetas de cache en minecraft_launcher_custom
) else (
    echo Eliminando carpeta de cache en minecraft_launcher_custom
)

rmdir /s /q "%CD%\src\minecraft_launcher_custom\_internal_types\__pycache__"
if %errorlevel% neq 0 (
    echo No hay carpetas de cache en minecraft_launcher_custom\_internal_types
) else (
    echo Eliminando carpeta de cache en minecraft_launcher_custom\_internal_types
)

rmdir /s /q "%CD%\src\__pycache__"
if %errorlevel% neq 0 (
    echo No hay carpetas de cache en la raiz
) else (
    echo Eliminando carpeta de cache en la raiz
)

mkdir "%CD%\target"
if %errorlevel% neq 0 (
    echo Carpeta de build creada
) else (
    echo Ya existe una carpeta de build
)

REM Definir variables de entorno
setlocal
set BUILD=0
set VERSION="1.0.0"
set PRODUCT="Minecraft-Launcher"
set COPYRIGHT="Launcher de Minecraft, by GatoArtStudio."
set DESCRIPTION="Launcher de Minecraft."
set COMPANY="By GatoArtStudio."
set OUTPUT="%CD%\target"

REM Mostrar argumentos de compilacion
echo Argumentos de compilacion son %*

REM Ejecutar comando de compilacion
cd src & flet build windows -v --build-number %BUILD% --build-version %VERSION% --product %PRODUCT% --copyright %COPYRIGHT% --description %DESCRIPTION% --company %COMPANY% -o %OUTPUT% -vv

endlocal

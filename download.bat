@echo off
chcp 65001 >nul

set "URL=https://mrbogprog.ru/AURORAR.exe"
set "OUTPUT=%~dp0file.zip"

curl -L -# --retry 3 -f -o "%OUTPUT%" "%URL%"

if errorlevel 1 (
    echo Ошибка при скачивании!
) else (
    echo Готово: %OUTPUT%
)

pause

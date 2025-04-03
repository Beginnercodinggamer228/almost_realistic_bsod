@echo off
title BSOD Prank Launcher
color 1f
mode con: cols=60 lines=20

:: Проверяем наличие файла
if not exist "bsod.ps1" (
    echo Файл bsod.ps1 не найден в этой папке!
    pause
    exit
)

:: Запускаем PowerShell с обходом политики выполнения
echo run fake bsod
echo please waite
powershell -ExecutionPolicy Bypass -NoProfile -WindowStyle Hidden -File "bsod.ps1"

:: Сообщение после завершения
::echo.
::echo Шутка завершена! Система не пострадала :)
timeout /t 3 >nul
exit
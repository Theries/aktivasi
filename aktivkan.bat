@echo off
setlocal enabledelayedexpansion

:: Prompt password
set /p pass=Masukkan PIN untuk aktivasi: 

:: Validasi password
if "%pass%"=="1885" (
    echo PIN benar. Menjalankan aktivasi...
    powershell -Command "irm 'https://get.activated.win' | iex"
) else (
    echo PIN salah. Aktivasi dibatalkan.
    exit /b
)

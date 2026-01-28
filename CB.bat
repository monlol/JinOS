@echo off
title Crash Browser
mode con lines=5 cols=40

:: Website
set keywords=poki gamevui crazygames

:watchdog
for %%a in (%keywords%) do (
    tasklist /v /fi "STATUS eq running" | findstr /i "%%a" >nul
    if not errorlevel 1 (
        taskkill /f /im zen.exe >nul 2>&1
		taskkill /f /im chromium.exe >nul 2>&1
        taskkill /f /im browser.exe >nul 2>&1
        taskkill /f /im msedge.exe >nul 2>&1
        taskkill /f /im firefox.exe >nul 2>&1
        taskkill /f /im brave.exe >nul 2>&1
        taskkill /f /im thorium.exe >nul 2>&1
        
        cls
        echo hehe
        timeout /t 3 >nul
    )
)

timeout /t 2 /nobreak >nul
goto watchdog
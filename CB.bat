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
        taskkill /f /im browsers.exe >nul 2>&1
        taskkill /f /im msedge.exe >nul 2>&1
        taskkill /f /im firefox.exe >nul 2>&1
        taskkill /f /im brave.exe >nul 2>&1
        taskkill /f /im thorium.exe >nul 2>&1
        
        cls
        echo msgbox "Tool chan web da duoc kich hoat!", 64, "Thong bao" > %temp%\msg.vbs
        wscript %temp%\msg.vbs
        del %temp%\msg.vbs
    )
)

goto watchdog
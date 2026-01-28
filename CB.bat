@echo off
set keywords=poki gamevui crazygames

tasklist /v /fi "STATUS eq running" | findstr /i "%keywords%" >nul

if %errorlevel% == 0 (
    taskkill /f /im chrome.exe >nul 2>&1
	taskkill /f /im browser.exe >nul 2>&1
	taskkill /f /im browsers.exe >nul 2>&1
	taskkill /f /im zen.exe >nul 2>&1
    taskkill /f /im chromium.exe >nul 2>&1
    taskkill /f /im msedge.exe >nul 2>&1
    taskkill /f /im thorium.exe >nul 2>&1
    taskkill /f /im brave.exe >nul 2>&1
    
    exit /b 1
)

exit /b 0
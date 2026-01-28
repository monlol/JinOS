@echo off
set "kw1=*poki*"
set "kw2=*gamevui*"
set "kw3=*crazygames*"

taskkill /F /FI "WINDOWTITLE eq %kw1%" /IM zen.exe /T >nul 2>&1
if %errorlevel%==0 exit /b 1
taskkill /F /FI "WINDOWTITLE eq %kw2%" /IM browser.exe /T >nul 2>&1
if %errorlevel%==0 exit /b 1
taskkill /F /FI "WINDOWTITLE eq %kw3%" /IM chrome.exe /T >nul 2>&1
if %errorlevel%==0 exit /b 1
taskkill /F /FI "WINDOWTITLE eq %kw4%" /IM msedge.exe /T >nul 2>&1
if %errorlevel%==0 exit /b 1
taskkill /F /FI "WINDOWTITLE eq %kw5%" /IM thorium.exe /T >nul 2>&1
if %errorlevel%==0 exit /b 1
taskkill /F /FI "WINDOWTITLE eq %kw5%" /IM browsers.exe /T >nul 2>&1
if %errorlevel%==0 exit /b 1
taskkill /F /FI "WINDOWTITLE eq %kw5%" /IM firefox.exe /T >nul 2>&1
if %errorlevel%==0 exit /b 1
taskkill /F /FI "WINDOWTITLE eq %kw5%" /IM brave.exe /T >nul 2>&1
if %errorlevel%==0 exit /b 1

exit /b 0
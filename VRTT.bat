@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul

:Check
if not exist "%userprofile%\VRTT" (
goto MDF
) ELSE (
goto Main
)

:MDF
md  %userprofile%\MDF
curl -g -k -L -# -o "%userprofile%\MDF\VRTT1.jpeg" "https://github.com/monlol/JinOS/raw/main/VRTT1.jpeg" >nul 2>&1
curl -g -k -L -# -o "%userprofile%\MDF\VRTT2.jpeg" "https://github.com/monlol/JinOS/raw/main/VRTT2.jpeg" >nul 2>&1
curl -g -k -L -# -o "%userprofile%\MDF\VRTT3.jpeg" "https://github.com/monlol/JinOS/raw/main/VRTT3.jpeg" >nul 2>&1
curl -g -k -L -# -o "%userprofile%\MDF\VRTT4.jpeg" "https://github.com/monlol/JinOS/blob/main/VRTT4.jpeg" >nul 2>&1
curl -g -k -L -# -o "%userprofile%\MDF\VRTT.mp3" "https://github.com/monlol/JinOS/raw/main/VRTT.mp3" >nul 2>&1
exit
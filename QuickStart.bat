@echo off
title QuickStart for Discord Music Bot

:: Step 1: Create a .env file in Discord-MusicBot-v4 folder
setlocal
set envFile=Discord-MusicBot-v4\.env

if not exist %envFile% (
    echo Creating .env file...
    echo. > %envFile%
) else (
    echo .env file already exists.
)

:: Step 2: Check if the Discord values are already present in the .env file
findstr /C:"DISCORD_BOT_TOKEN=" %envFile% >nul 2>&1
if %errorlevel% neq 0 (
    set /p DISCORD_BOT_TOKEN="Enter your Discord Bot Token: "
    echo DISCORD_BOT_TOKEN=%DISCORD_BOT_TOKEN% >> %envFile%
)

findstr /C:"DISCORD_CLIENT_ID=" %envFile% >nul 2>&1
if %errorlevel% neq 0 (
    set /p DISCORD_CLIENT_ID="Enter your Discord Client ID: "
    echo DISCORD_CLIENT_ID=%DISCORD_CLIENT_ID% >> %envFile%
)

findstr /C:"DISCORD_CLIENT_SECRET=" %envFile% >nul 2>&1
if %errorlevel% neq 0 (
    set /p DISCORD_CLIENT_SECRET="Enter your Discord Client Secret: "
    echo DISCORD_CLIENT_SECRET=%DISCORD_CLIENT_SECRET% >> %envFile%
)

:: Step 3: Check if Docker Desktop is running
tasklist /FI "IMAGENAME eq Docker Desktop.exe" 2>NUL | find /I /N "Docker Desktop.exe">NUL
if "%ERRORLEVEL%"=="1" (
    echo Docker Desktop is not running. Please start Docker Desktop and run this file again.
    pause
    exit /b
)

:: Step 4: Run docker-compose
cd Discord-MusicBot-v4
docker-compose up -d --build

:: Step 5: Bot invite
echo //////// BOT INVITE ////////
echo Invite the music bot to your Discord server using the following URL (paste this in a web browser): 
echo https://discord.com/oauth2/authorize?client_id=%DISCORD_CLIENT_ID%^&scope=bot^&permissions=277083450689
echo ///////////////////////////

pause

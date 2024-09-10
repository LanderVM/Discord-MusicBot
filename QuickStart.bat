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

:: Step 2: Ask for user input and write to .env file
echo Follow the github guide if you dont know where to find the following values: https://github.com/LanderVM/Discord-MusicBot?tab=readme-ov-file#very-quick-setup-windows-only
set /p DISCORD_BOT_TOKEN="Enter your Discord Bot Token: "
set /p DISCORD_CLIENT_ID="Enter your Discord Client ID: "
set /p DISCORD_CLIENT_SECRET="Enter your Discord Client Secret: "

echo DISCORD_BOT_TOKEN=%DISCORD_BOT_TOKEN% > %envFile%
echo DISCORD_CLIENT_ID=%DISCORD_CLIENT_ID% >> %envFile%
echo DISCORD_CLIENT_SECRET=%DISCORD_CLIENT_SECRET% >> %envFile%

:: Step 3: Check if docker is running
tasklist /FI "IMAGENAME eq Docker Desktop.exe" 2>NUL | find /I /N "Docker Desktop.exe">NUL
if "%ERRORLEVEL%"=="1" (
    echo Docker Desktop is not running. Please start Docker Desktop and run this file again.
    pause
    exit /b
)

:: Step 4: Run docker-compose

cd Discord-MusicBot-v4
docker-compose up -d --build

:: Step 5: Invite

echo Invite the music bot to your discord server using the following url (paste this in a webbrowser): https://discord.com/oauth2/authorize?client_id=%DISCORD_CLIENT_ID%^&scope=bot^&permissions=277083450689

pause

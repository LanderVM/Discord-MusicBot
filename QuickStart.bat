@echo off
title QuickStart for Discord Music Bot

:: Enable delayed expansion to handle dynamic variables properly
setlocal enabledelayedexpansion

set envExampleFile=Discord-MusicBot-v5\.env.example
set envFile=Discord-MusicBot-v5\.env

:: Step 1: Copy .env.example to .env if .env doesn't already exist
if not exist %envFile% (
    echo Copying .env.example to .env excluding Discord values...
    (
        for /f "usebackq tokens=1,* delims==" %%i in (type %envExampleFile%) do (
            if /i "%%i" neq "DISCORD_BOT_TOKEN" if /i "%%i" neq "DISCORD_CLIENT_ID" if /i "%%i" neq "DISCORD_CLIENT_SECRET" (
                echo %%i=%%j
            )
        )
    ) > %envFile%
) else (
    echo .env file already exists.
)

:: Step 2: Ensure Discord values are set in the .env file
set "foundToken=false"
set "foundClientId=false"
set "foundClientSecret=false"

for /f "usebackq tokens=1,* delims==" %%i in (%envFile%) do (
    if /i "%%i"=="DISCORD_BOT_TOKEN" (
        set "foundToken=true"
        set "DISCORD_BOT_TOKEN=%%j"
    )
    if /i "%%i"=="DISCORD_CLIENT_ID" (
        set "foundClientId=true"
        set "DISCORD_CLIENT_ID=%%j"
    )
    if /i "%%i"=="DISCORD_CLIENT_SECRET" (
        set "foundClientSecret=true"
        set "DISCORD_CLIENT_SECRET=%%j"
    )
)

:: Function to trim trailing spaces
set "trim="
for /f "tokens=* delims= " %%a in ("%DISCORD_BOT_TOKEN%") do set "DISCORD_BOT_TOKEN=%%a"
for /f "tokens=* delims= " %%a in ("%DISCORD_CLIENT_ID%") do set "DISCORD_CLIENT_ID=%%a"
for /f "tokens=* delims= " %%a in ("%DISCORD_CLIENT_SECRET%") do set "DISCORD_CLIENT_SECRET=%%a"

:: Prompt for missing values and directly append to the .env file if needed
if not %foundToken%==true (
    set /p DISCORD_BOT_TOKEN="Enter your Discord Bot Token: "
    for /f "tokens=* delims= " %%a in ("!DISCORD_BOT_TOKEN!") do set "DISCORD_BOT_TOKEN=%%a"
    echo DISCORD_BOT_TOKEN=!DISCORD_BOT_TOKEN!>> %envFile%
)

if not %foundClientId%==true (
    set /p DISCORD_CLIENT_ID="Enter your Discord Client ID: "
    for /f "tokens=* delims= " %%a in ("!DISCORD_CLIENT_ID!") do set "DISCORD_CLIENT_ID=%%a"
    echo DISCORD_CLIENT_ID=!DISCORD_CLIENT_ID!>> %envFile%
)

if not %foundClientSecret%==true (
    set /p DISCORD_CLIENT_SECRET="Enter your Discord Client Secret: "
    for /f "tokens=* delims= " %%a in ("!DISCORD_CLIENT_SECRET!") do set "DISCORD_CLIENT_SECRET=%%a"
    echo DISCORD_CLIENT_SECRET=!DISCORD_CLIENT_SECRET!>> %envFile%
)

:: Step 3: Check if Docker Desktop is running
tasklist /FI "IMAGENAME eq Docker Desktop.exe" 2>NUL | find /I /N "Docker Desktop.exe">NUL
if "%ERRORLEVEL%"=="1" (
    echo Docker Desktop is not running. Please start Docker Desktop and run this file again.
    pause
    exit /b
)

:: Step 4: Run docker-compose
cd Discord-MusicBot-v5
docker-compose up -d --build

:: Step 5: Bot invite
echo //////// BOT INVITE ////////
echo Invite the music bot to your Discord server using the following URL (paste this in a web browser): 
echo https://discord.com/oauth2/authorize?client_id=!DISCORD_CLIENT_ID!^&scope=bot^&permissions=277083450689
echo ///////////////////////////

pause

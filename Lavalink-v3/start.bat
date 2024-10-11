@echo off

REM Load environment variables from .env file
for /f "tokens=1,2 delims==" %%a in ('type .env') do set %%a=%%b

REM Start Lavalink with loaded environment variables
java -jar Lavalink.jar

PAUSE
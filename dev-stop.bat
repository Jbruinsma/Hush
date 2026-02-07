@echo off
REM Stop all development services

echo ========================================
echo Stopping Hush App Development Environment
echo ========================================
echo.

echo Stopping database and services...
docker-compose down

echo.
echo ========================================
echo All services stopped!
echo ========================================
echo.
pause


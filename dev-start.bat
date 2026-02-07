@echo off
REM Quick start script for development

echo ========================================
echo Starting Hush App Development Environment
echo ========================================
echo.

REM Check if Docker is running
docker ps >nul 2>&1
if %errorlevel% neq 0 (
    echo WARNING: Docker is not running. Please start Docker Desktop.
    echo.
    pause
    exit /b 1
)

echo [1/3] Starting database...
docker-compose up -d
if %errorlevel% neq 0 (
    echo ERROR: Failed to start database
    pause
    exit /b 1
)

echo.
echo [2/3] Waiting for database to be ready...
timeout /t 5 /nobreak >nul

echo.
echo [3/3] Starting backend server...
echo.
echo ========================================
echo Development Environment Started!
echo ========================================
echo.
echo Backend API: http://localhost:8000/docs
echo PgAdmin: http://localhost:5050
echo.
echo To start the backend, run:
echo   cd backend
echo   venv\Scripts\activate
echo   python src/main.py
echo.
echo To start the frontend, run:
echo   cd frontend
echo   flutter run
echo.
echo Press Ctrl+C to stop services when done.
echo ========================================
echo.

pause


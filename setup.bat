@echo off
REM Hush App Setup Script for Windows
REM This script sets up the complete monorepo structure

echo ========================================
echo Hush App - Monorepo Setup Script
echo ========================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Python is not installed or not in PATH
    echo Please install Python 3.9+ from https://www.python.org/downloads/
    exit /b 1
)

REM Check if Flutter is installed
flutter --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Flutter is not installed or not in PATH
    echo Please install Flutter from https://flutter.dev/docs/get-started/install
    exit /b 1
)

echo [1/6] Setting up backend Python environment...
cd backend
if not exist venv (
    python -m venv venv
    echo Virtual environment created successfully
) else (
    echo Virtual environment already exists
)

echo.
echo [2/6] Activating virtual environment and installing dependencies...
call venv\Scripts\activate.bat
pip install --upgrade pip
pip install -r requirements.txt

echo.
echo [3/6] Creating .env file from template...
if not exist .env (
    copy .env.example .env
    echo .env file created. Please update with your database credentials.
) else (
    echo .env file already exists
)

cd ..

echo.
echo [4/6] Setting up Flutter frontend...
if not exist frontend (
    flutter create frontend
    echo Flutter project created successfully
) else (
    echo Flutter project already exists
)

echo.
echo [5/6] Getting Flutter dependencies...
cd frontend
call flutter pub get
cd ..

echo.
echo [6/6] Initializing Git repository...
if not exist .git (
    git init
    git add .
    git commit -m "Initial commit: Hush app monorepo setup"
    echo Git repository initialized
) else (
    echo Git repository already exists
)

echo.
echo ========================================
echo Setup Complete!
echo ========================================
echo.
echo Next steps:
echo 1. Set up PostgreSQL database with PostGIS extension
echo 2. Update backend/.env with your database credentials
echo 3. Start backend: cd backend ^&^& venv\Scripts\activate ^&^& python src\main.py
echo 4. Start frontend: cd frontend ^&^& flutter run
echo.
echo For more information, see README.md
echo.

pause


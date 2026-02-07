#!/bin/bash

# Hush App Setup Script for Unix-based systems (macOS/Linux)
# This script sets up the complete monorepo structure

echo "========================================"
echo "Hush App - Monorepo Setup Script"
echo "========================================"
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "ERROR: Python3 is not installed"
    echo "Please install Python 3.9+ from https://www.python.org/downloads/"
    exit 1
fi

# Check if Flutter is installed
if ! command -v flutter &> /dev/null; then
    echo "ERROR: Flutter is not installed"
    echo "Please install Flutter from https://flutter.dev/docs/get-started/install"
    exit 1
fi

echo "[1/6] Setting up backend Python environment..."
cd backend
if [ ! -d "venv" ]; then
    python3 -m venv venv
    echo "Virtual environment created successfully"
else
    echo "Virtual environment already exists"
fi

echo ""
echo "[2/6] Activating virtual environment and installing dependencies..."
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

echo ""
echo "[3/6] Creating .env file from template..."
if [ ! -f ".env" ]; then
    cp .env.example .env
    echo ".env file created. Please update with your database credentials."
else
    echo ".env file already exists"
fi

cd ..

echo ""
echo "[4/6] Setting up Flutter frontend..."
if [ ! -d "frontend" ]; then
    flutter create frontend
    echo "Flutter project created successfully"
else
    echo "Flutter project already exists"
fi

echo ""
echo "[5/6] Getting Flutter dependencies..."
cd frontend
flutter pub get
cd ..

echo ""
echo "[6/6] Initializing Git repository..."
if [ ! -d ".git" ]; then
    git init
    git add .
    git commit -m "Initial commit: Hush app monorepo setup"
    echo "Git repository initialized"
else
    echo "Git repository already exists"
fi

echo ""
echo "========================================"
echo "Setup Complete!"
echo "========================================"
echo ""
echo "Next steps:"
echo "1. Set up PostgreSQL database with PostGIS extension"
echo "2. Update backend/.env with your database credentials"
echo "3. Start backend: cd backend && source venv/bin/activate && python src/main.py"
echo "4. Start frontend: cd frontend && flutter run"
echo ""
echo "For more information, see README.md"
echo ""


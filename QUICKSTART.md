# Hush App - Quick Start Guide

## Automated Setup (Recommended)

### Windows
Simply run the setup script:
```cmd
setup.bat
```

### macOS/Linux
Make the script executable and run it:
```bash
chmod +x setup.sh
./setup.sh
```

## Manual Setup

If you prefer to set up manually or the automated script encounters issues:

### 1. Backend Setup

```cmd
# Navigate to backend directory
cd backend

# Create virtual environment
python -m venv venv

# Activate virtual environment
# Windows:
venv\Scripts\activate
# macOS/Linux:
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Create environment file
copy .env.example .env  # Windows
cp .env.example .env    # macOS/Linux

# Edit .env with your database credentials
```

### 2. Frontend Setup

```cmd
# Navigate back to root
cd ..

# Create Flutter project
flutter create frontend

# Navigate to frontend
cd frontend

# Get dependencies
flutter pub get
```

### 3. Database Setup

Install PostgreSQL with PostGIS and create the database:

```sql
CREATE DATABASE hush_db;
\c hush_db
CREATE EXTENSION postgis;
```

### 4. Run the Application

**Terminal 1 - Backend:**
```cmd
cd backend
venv\Scripts\activate  # Windows
source venv/bin/activate  # macOS/Linux
python src/main.py
```

**Terminal 2 - Frontend:**
```cmd
cd frontend
flutter run
```

## Verify Installation

1. **Backend API**: Open http://localhost:8000/docs in your browser
2. **Frontend App**: Should launch on your connected device/emulator

## Troubleshooting

### Python Virtual Environment Issues
- Ensure Python 3.9+ is installed: `python --version`
- Try using `python3` instead of `python` on macOS/Linux

### Flutter Issues
- Verify Flutter installation: `flutter doctor`
- Run `flutter clean` if you encounter build issues

### Database Connection Issues
- Verify PostgreSQL is running
- Check credentials in `backend/.env`
- Ensure PostGIS extension is installed

## Next Steps

1. Explore the API documentation at http://localhost:8000/docs
2. Read the full README.md for detailed information
3. Start building your features!

## Project Structure Overview

```
hush-app/
├── backend/
│   ├── src/
│   │   ├── main.py          # FastAPI app entry point
│   │   ├── database.py      # Database configuration
│   │   └── config.py        # Application settings
│   ├── requirements.txt
│   └── .env.example
├── frontend/                # Flutter app
├── setup.bat               # Windows setup script
├── setup.sh                # Unix setup script
└── README.md               # Full documentation
```


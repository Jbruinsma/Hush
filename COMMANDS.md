# Hush App - Command Reference

A quick reference for all common commands used in the Hush project.

## Initial Setup Commands

### Option 1: Automated Setup (Recommended)

**Windows:**
```cmd
setup.bat
```

**macOS/Linux:**
```bash
chmod +x setup.sh
./setup.sh
```

### Option 2: Manual Setup

**Create backend structure:**
```cmd
mkdir hush-app
cd hush-app
mkdir backend
cd backend
python -m venv venv
```

**Activate virtual environment:**
```cmd
# Windows
venv\Scripts\activate

# macOS/Linux
source venv/bin/activate
```

**Install Python dependencies:**
```cmd
pip install -r requirements.txt
```

**Create Flutter frontend:**
```cmd
cd ..
flutter create frontend
cd frontend
flutter pub get
```

## Database Commands

### Using Docker (Recommended)

**Start PostgreSQL with PostGIS:**
```cmd
docker-compose up -d
```

**Stop database:**
```cmd
docker-compose down
```

**View logs:**
```cmd
docker-compose logs -f postgres
```

**Access PgAdmin:**
Open browser: http://localhost:5050
- Email: admin@hush.local
- Password: admin

### Using Local PostgreSQL

**Create database:**
```sql
psql -U postgres
CREATE DATABASE hush_db;
\c hush_db
CREATE EXTENSION postgis;
\q
```

**Check PostGIS installation:**
```sql
SELECT PostGIS_version();
```

## Backend Commands

**Navigate to backend:**
```cmd
cd backend
```

**Activate virtual environment:**
```cmd
# Windows
venv\Scripts\activate

# macOS/Linux
source venv/bin/activate
```

**Run FastAPI server:**
```cmd
# Simple run
python src/main.py

# With uvicorn (recommended for development)
uvicorn src.main:app --reload --host 0.0.0.0 --port 8000
```

**Install new package:**
```cmd
pip install package_name
pip freeze > requirements.txt
```

**Run tests:**
```cmd
pytest
```

**Database migrations (if using Alembic):**
```cmd
# Initialize Alembic (first time only)
alembic init alembic

# Create migration
alembic revision --autogenerate -m "Description"

# Apply migrations
alembic upgrade head

# Rollback migration
alembic downgrade -1
```

## Frontend Commands

**Navigate to frontend:**
```cmd
cd frontend
```

**Run Flutter app:**
```cmd
flutter run
```

**Run on specific device:**
```cmd
# List devices
flutter devices

# Run on specific device
flutter run -d device_id
```

**Build for production:**
```cmd
# Android APK
flutter build apk

# Android App Bundle
flutter build appbundle

# iOS
flutter build ios

# Web
flutter build web
```

**Install new package:**
```cmd
# Add to pubspec.yaml, then:
flutter pub get

# Or use command:
flutter pub add package_name
```

**Clean build:**
```cmd
flutter clean
flutter pub get
```

**Run tests:**
```cmd
flutter test
```

**Check Flutter installation:**
```cmd
flutter doctor
flutter doctor -v
```

## Git Commands

**Initialize repository:**
```cmd
git init
git add .
git commit -m "Initial commit"
```

**Common workflow:**
```cmd
git status
git add .
git commit -m "Your message"
git push origin main
```

**Create new branch:**
```cmd
git checkout -b feature/feature-name
```

**Merge branch:**
```cmd
git checkout main
git merge feature/feature-name
```

## Development Workflow

### Starting Development Session

**Terminal 1 - Database:**
```cmd
docker-compose up
```

**Terminal 2 - Backend:**
```cmd
cd backend
venv\Scripts\activate  # Windows
source venv/bin/activate  # macOS/Linux
uvicorn src.main:app --reload
```

**Terminal 3 - Frontend:**
```cmd
cd frontend
flutter run
```

### Stopping Development Session

1. Stop Flutter app: Press `q` in terminal
2. Stop Backend: Press `Ctrl+C`
3. Stop Database: `docker-compose down`

## Useful URLs

- **Backend API Docs**: http://localhost:8000/docs
- **Backend ReDoc**: http://localhost:8000/redoc
- **PgAdmin**: http://localhost:5050
- **Frontend**: Runs on connected device/emulator

## Troubleshooting Commands

**Check Python version:**
```cmd
python --version
```

**Check Flutter version:**
```cmd
flutter --version
```

**Check Docker status:**
```cmd
docker ps
docker-compose ps
```

**View backend logs:**
```cmd
# If running directly
Check terminal output

# If using Docker
docker-compose logs -f
```

**Reset database:**
```cmd
docker-compose down -v
docker-compose up -d
```

**Clear Python cache:**
```cmd
find . -type d -name "__pycache__" -exec rm -r {} +  # macOS/Linux
# Windows: manually delete __pycache__ folders
```

**Flutter clean install:**
```cmd
flutter clean
flutter pub cache clean
flutter pub get
```

## VS Code / IDE Integration

**VS Code Extensions (Recommended):**
- Python
- Pylance
- Flutter
- Dart
- SQLTools
- GitLens
- Docker

**PyCharm / IntelliJ:**
- Set Python interpreter to `backend/venv/bin/python`
- Enable Flutter plugin

## Environment Variables

**View current environment:**
```cmd
# Windows
set

# macOS/Linux
printenv
```

**Set environment variable (temporary):**
```cmd
# Windows
set VARIABLE_NAME=value

# macOS/Linux
export VARIABLE_NAME=value
```

## Performance & Optimization

**Backend - Check memory usage:**
```cmd
python -m memory_profiler src/main.py
```

**Frontend - Analyze bundle size:**
```cmd
flutter build apk --analyze-size
```

**Database - View connections:**
```sql
SELECT * FROM pg_stat_activity;
```

## Production Deployment

**Build optimized backend:**
```cmd
pip install -r requirements.txt --no-cache-dir
```

**Build optimized Flutter:**
```cmd
flutter build apk --release
flutter build web --release
```

---

For more detailed information, refer to:
- README.md - Full project documentation
- QUICKSTART.md - Quick start guide
- FLUTTER_SETUP.md - Flutter installation instructions


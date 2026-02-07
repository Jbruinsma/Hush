# Installation Checklist

Use this checklist to ensure your development environment is properly set up.

## Prerequisites

### Required Software

- [ ] **Python 3.9+** installed
  ```cmd
  python --version
  ```
  Expected: Python 3.9.x or higher

- [ ] **Flutter SDK** installed (optional for backend-only development)
  ```cmd
  flutter --version
  ```
  Expected: Flutter 3.0.x or higher

- [ ] **Docker Desktop** installed (recommended) or PostgreSQL locally
  ```cmd
  docker --version
  ```
  Expected: Docker version 20.x or higher

- [ ] **Git** installed
  ```cmd
  git --version
  ```
  Expected: git version 2.x or higher

## Backend Setup

- [ ] Virtual environment created
  ```cmd
  cd backend
  dir venv  # Should show venv directory
  ```

- [ ] Dependencies installed
  ```cmd
  venv\Scripts\activate
  pip list | findstr fastapi
  ```
  Expected: fastapi 0.109.0

- [ ] Environment file configured
  ```cmd
  dir .env
  ```
  Expected: .env file exists

- [ ] Backend runs successfully
  ```cmd
  python src/main.py
  ```
  Expected: Server starts on http://localhost:8000

- [ ] API documentation accessible
  - Open browser: http://localhost:8000/docs
  - Expected: Swagger UI loads

## Database Setup

- [ ] Docker Compose services start
  ```cmd
  docker-compose up -d
  docker-compose ps
  ```
  Expected: postgres and pgadmin containers running

- [ ] PostgreSQL accessible
  - Host: localhost:5432
  - Database: hush_db
  - Username: hush_user
  - Password: hush_password

- [ ] PgAdmin accessible
  - Open browser: http://localhost:5050
  - Email: admin@hush.local
  - Password: admin

- [ ] PostGIS extension enabled
  ```sql
  SELECT PostGIS_version();
  ```
  Expected: PostGIS version 3.3.x

## Frontend Setup (if applicable)

- [ ] Flutter project created
  ```cmd
  dir frontend
  ```
  Expected: frontend directory with Flutter project

- [ ] Flutter dependencies installed
  ```cmd
  cd frontend
  flutter pub get
  ```
  Expected: Dependencies downloaded

- [ ] Flutter doctor checks pass
  ```cmd
  flutter doctor
  ```
  Expected: No critical errors (some warnings OK)

- [ ] Flutter app runs
  ```cmd
  flutter run
  ```
  Expected: App launches on device/emulator

## Development Workflow

- [ ] Can start database: `docker-compose up -d`
- [ ] Can start backend: `cd backend && venv\Scripts\activate && python src/main.py`
- [ ] Can start frontend: `cd frontend && flutter run`
- [ ] Can access API docs: http://localhost:8000/docs
- [ ] Can access PgAdmin: http://localhost:5050
- [ ] Backend hot-reload works (uvicorn --reload)
- [ ] Frontend hot-reload works (Flutter's hot reload)

## Git Setup

- [ ] Git repository initialized
  ```cmd
  git status
  ```
  Expected: Shows repository status

- [ ] .gitignore working
  ```cmd
  git status
  ```
  Expected: venv/, __pycache__/, .env not listed

## Troubleshooting

### Common Issues

**Issue**: Python not found
- [ ] Python installed and in PATH
- [ ] Try `python3` instead of `python` (macOS/Linux)

**Issue**: pip install fails
- [ ] Virtual environment activated
- [ ] Try: `python -m pip install --upgrade pip`

**Issue**: Docker not running
- [ ] Docker Desktop started
- [ ] Docker service running: `docker ps`

**Issue**: Port 8000 already in use
- [ ] Change port in .env: `API_PORT=8001`
- [ ] Or stop conflicting service

**Issue**: Database connection failed
- [ ] Docker containers running: `docker-compose ps`
- [ ] Credentials match in .env
- [ ] Database URL format correct

**Issue**: Flutter not found
- [ ] Flutter SDK installed
- [ ] Flutter in PATH
- [ ] Run: `flutter doctor`

## Team Sign-off

Once you've completed this checklist, you're ready to start development!

Team Member: _________________ Date: _______

- [ ] All prerequisites installed
- [ ] Backend running successfully
- [ ] Database accessible
- [ ] Can make code changes
- [ ] Ready to develop features

## Next Steps

1. Review project documentation (README.md)
2. Join team communication channels
3. Review project board/issues
4. Pick first task to work on
5. Create feature branch
6. Start coding!

---

**Need help?** See:
- README.md - Full documentation
- QUICKSTART.md - Quick start guide
- COMMANDS.md - Command reference
- Team lead or senior developer


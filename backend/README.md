# Hush Backend - FastAPI Application

## Overview

This is the backend API for the Hush application, built with FastAPI and designed to work with PostgreSQL/PostGIS.

## Structure

```
backend/
├── src/
│   ├── __init__.py          # Package initializer
│   ├── main.py              # FastAPI application
│   ├── database.py          # Database configuration
│   └── config.py            # Settings management
├── venv/                    # Virtual environment
├── requirements.txt         # Python dependencies
└── .env.example            # Environment template
```

## Quick Start

1. **Activate virtual environment:**
   ```cmd
   venv\Scripts\activate  # Windows
   source venv/bin/activate  # macOS/Linux
   ```

2. **Install dependencies:**
   ```cmd
   pip install -r requirements.txt
   ```

3. **Configure environment:**
   ```cmd
   copy .env.example .env  # Windows
   cp .env.example .env    # macOS/Linux
   ```

4. **Run the server:**
   ```cmd
   python src/main.py
   ```

## API Documentation

Once running, visit:
- Swagger UI: http://localhost:8000/docs
- ReDoc: http://localhost:8000/redoc

## Available Endpoints

- `GET /` - Welcome message
- `GET /health` - Health check

## Development

### Running with auto-reload:
```cmd
uvicorn src.main:app --reload
```

### Adding new dependencies:
```cmd
pip install package_name
pip freeze > requirements.txt
```

## Database

The application is configured to work with PostgreSQL + PostGIS. See the root `docker-compose.yml` for easy database setup.

## Environment Variables

Create a `.env` file with:
```env
DATABASE_URL=postgresql+asyncpg://hush_user:hush_password@localhost:5432/hush_db
API_HOST=0.0.0.0
API_PORT=8000
DEBUG=True
```

## Testing

```cmd
pytest
```

## Common Tasks

### Create database models:
Edit or create new files in `src/models/`

### Add new routes:
Create router files in `src/routers/`

### Migrations:
```cmd
alembic revision --autogenerate -m "Description"
alembic upgrade head
```


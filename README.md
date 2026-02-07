# Hush App

A full-stack monorepo application with Python FastAPI backend and Flutter frontend.

## Tech Stack

- **Backend**: Python FastAPI with PostgreSQL and PostGIS
- **Frontend**: Flutter
- **Architecture**: Monorepo structure

## Project Structure

```
hush-app/
├── backend/          # Python FastAPI backend
│   ├── venv/        # Python virtual environment
│   ├── src/         # Source code
│   │   └── main.py  # FastAPI application entry point
│   ├── requirements.txt
│   └── .env.example
├── frontend/        # Flutter frontend application
├── .gitignore
└── README.md
```

## Getting Started

### Prerequisites

- Python 3.9 or higher
- PostgreSQL 14+ with PostGIS extension
- Flutter SDK 3.0 or higher
- Git

### Backend Setup

1. **Navigate to the backend directory:**
   ```bash
   cd backend
   ```

2. **Activate the virtual environment:**
   
   On Windows:
   ```cmd
   venv\Scripts\activate
   ```
   
   On macOS/Linux:
   ```bash
   source venv/bin/activate
   ```

3. **Install Python dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

4. **Set up environment variables:**
   ```bash
   cp .env.example .env
   ```
   Then edit `.env` with your database credentials.

5. **Run the FastAPI server:**
   ```bash
   cd src
   python main.py
   ```
   
   Or using uvicorn directly:
   ```bash
   uvicorn src.main:app --reload --host 0.0.0.0 --port 8000
   ```

6. **Access the API documentation:**
   - Swagger UI: http://localhost:8000/docs
   - ReDoc: http://localhost:8000/redoc

### Frontend Setup

1. **Navigate to the root directory:**
   ```bash
   cd hush-app
   ```

2. **Create the Flutter project:**
   ```bash
   flutter create frontend
   ```

3. **Navigate to the frontend directory:**
   ```bash
   cd frontend
   ```

4. **Get Flutter dependencies:**
   ```bash
   flutter pub get
   ```

5. **Run the Flutter app:**
   ```bash
   flutter run
   ```

### Database Setup

1. **Install PostgreSQL and PostGIS:**
   - Download and install PostgreSQL from https://www.postgresql.org/download/
   - Install PostGIS extension

2. **Create the database:**
   ```sql
   CREATE DATABASE hush_db;
   \c hush_db
   CREATE EXTENSION postgis;
   ```

3. **Update the DATABASE_URL in backend/.env**

## Development

### Running Backend in Development Mode

```bash
cd backend
venv\Scripts\activate  # On Windows
uvicorn src.main:app --reload
```

### Running Frontend in Development Mode

```bash
cd frontend
flutter run
```

### Running Tests

**Backend:**
```bash
cd backend
pytest
```

**Frontend:**
```bash
cd frontend
flutter test
```

## API Endpoints

- `GET /` - Hello World endpoint
- `GET /health` - Health check endpoint
- `GET /docs` - Interactive API documentation (Swagger UI)

## Contributing

1. Create a new branch for your feature
2. Make your changes
3. Test thoroughly
4. Submit a pull request

## License

[Add your license here]

## Team

[Add your team members here]


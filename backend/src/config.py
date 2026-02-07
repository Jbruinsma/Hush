"""
Application configuration settings
"""
from pydantic_settings import BaseSettings
from typing import Optional


class Settings(BaseSettings):
    """
    Application settings loaded from environment variables
    """
    # API Configuration
    api_host: str = "0.0.0.0"
    api_port: int = 8000
    debug: bool = True

    # Database Configuration
    database_url: str = "postgresql+asyncpg://user:password@localhost:5432/hush_db"

    # PostGIS Configuration
    postgis_version: str = "3.3"

    # CORS Configuration
    cors_origins: list[str] = ["*"]

    class Config:
        env_file = ".env"
        case_sensitive = False


# Create global settings instance
settings = Settings()


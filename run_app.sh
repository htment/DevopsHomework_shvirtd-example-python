#!/bin/bash
# Ждём MySQL перед запуском FastAPI (без TLS)
until mysql --ssl=0 -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASSWORD" -e "SELECT 1;" "$DB_NAME"; do
  echo "Waiting for MySQL at $DB_HOST..."
  sleep 2
done

# Запускаем FastAPI!!!
exec uvicorn main:app --host 0.0.0.0 --port 5000

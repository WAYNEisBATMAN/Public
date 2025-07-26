FROM python:3.11-slim

# Set workdir
WORKDIR /app

# Install dependencies
COPY backend/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the backend code
COPY backend/ ./backend/

# Set port (optional for dev)
EXPOSE 8800

# Default command
CMD ["python", "backend/manage.py", "runserver", "0.0.0.0:8800"]

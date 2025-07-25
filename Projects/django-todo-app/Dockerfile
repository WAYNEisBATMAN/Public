# ✅ Required base image
FROM python:3.11-slim

# Install distutils
RUN apt-get update && apt-get install -y python3-distutils

# Install Django
RUN pip install django==3.2

# Copy the code
COPY . .

# Apply database migrations
RUN python manage.py migrate

# Run the server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

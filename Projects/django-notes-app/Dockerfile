# Use a lightweight official Python 3.11 base image
FROM python:3.11-slim

# Set the working directory inside the container
# All following commands will run relative to this path
WORKDIR /app/backend

# Copy only the requirements.txt file first to leverage Docker layer caching
# This helps avoid reinstalling packages on every code change
COPY requirements.txt /app/backend

# Install Python dependencies listed in requirements.txt
RUN pip install -r requirements.txt

# Copy the entire application code into the container
COPY . /app/backend

# Expose port 8800 to allow communication with the Django app
EXPOSE 8800

# Command to start the Django development server
# Binds the server to 0.0.0.0 to make it accessible outside the container
CMD ["python", "manage.py", "runserver", "0.0.0.0:8800"]

# Use the official Python image from the Docker Hub
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file (if exists) or install dependencies directly
# Since no requirements.txt, install Flask and SQLAlchemy
RUN pip install flask flask-sqlalchemy

# Copy the current directory contents into the container at /app
COPY . /app

# Expose port 5000 for the Flask app
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
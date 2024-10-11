# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the source code into the container
COPY . .

# Run flake8 to check code quality
RUN flake8 src tests

# Run pytest to test the application
RUN pytest tests

# Default command (can be changed in Makefile or Docker run command)
CMD ["python3"]

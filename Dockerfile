# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application code and install dependencies
COPY requirements.txt .
RUN pip install --upgrade flask
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose the application port
EXPOSE 8080

# Run the application
CMD ["python", "app/main.py"]
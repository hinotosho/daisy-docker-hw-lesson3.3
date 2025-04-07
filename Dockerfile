# Use the latest Python image
FROM python:latest

# Set up a working directory
WORKDIR /app

# Copy all project files into the container
COPY . /app

# Install dependencies (Flask)
RUN pip install -r requirements.txt

# Expose port 8080 for Flask app
EXPOSE 8080

# Define entry point for the container
ENTRYPOINT ["python"]
CMD ["app.py"]

# Use an official Python runtime as the base imag
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /app/

# Install any necessary dependencies specified in requirements.txt
RUN pip install -r requirements.txt

# Copy the Flask application code into the con
COPY . /app/

# Expose the port the Flask app will run 

EXPOSE 5000

# Define the environment variable for 
ENV FLASK_ENV=development
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run the Flask application when the container starts
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "5000"]

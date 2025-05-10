# Use Python's official image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt and install dependencies
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application to the container
COPY . /app

# Expose the port that Flask will run on
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]

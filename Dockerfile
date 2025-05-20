# Use an official lightweight Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy project files into the container
COPY . /app

# Install any dependencies (if you have them)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt || true

# Run tests using unittest
CMD ["python", "-m", "unittest", "discover", "-s", "tests"]
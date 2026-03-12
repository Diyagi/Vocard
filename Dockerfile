FROM python:3.14-slim-trixie

# Set the working directory
WORKDIR /app

# Copy only the requirements file to take advantage of Docker's caching
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Run the application
CMD ["python", "-u", "main.py"]
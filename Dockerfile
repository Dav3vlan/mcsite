FROM python:3.11-slim
# Set the working directory in the container
WORKDIR /app
# Install dependencies separately to cache them
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
# Copy the application code (for production, not necessary for live development)
COPY . /app
# Make port 8000 available to the world outside this container
EXPOSE 8000
# Define environment variable
ENV PYTHONUNBUFFERED=1

# Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

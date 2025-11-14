# Use official Python image as base
FROM python:3.13.3
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /app
RUN pip install --no-cache-dir Django==4.2.5

# Install dependencies

# Copy project
COPY . /app
# Expose port 8000
EXPOSE 8000
# Run the application
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
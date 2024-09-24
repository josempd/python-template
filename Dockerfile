# Start with a Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install Poetry
RUN pip install poetry

# Copy the project
COPY . .

# Install dependencies without virtualenvs
RUN poetry config virtualenvs.create false \
    && poetry install --only main --no-interaction --no-ansi

# Command to run your app
CMD ["python", "src/main.py"]

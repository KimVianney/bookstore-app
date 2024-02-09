# Pull the base image
FROM python:3.11.6-slim-bullseye

# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /code

# Install system dependencies
COPY ./requirements.txt .
RUN apt-get update && apt-get install -y gcc python3-dev libpq-dev \
    musl-dev

RUN pip install -r requirements.txt

# Copy project
COPY . .

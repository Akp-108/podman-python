# FROM python:3.9-slim-buster

# WORKDIR /app

# COPY requirements.txt requirements.txt
# RUN pip install -r requirements.txt

# COPY . .

# CMD [ "python", "app.py" ]


# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

EXPOSE 5000

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# pip freeze > requirements.txt

# Run app.py when the container launches
CMD ["python", "app.py"]


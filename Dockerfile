# Use the Python base image
FROM python:3

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install -r requirements.txt

# Copy the current directory to the container
COPY . .

# Set up the entry point
ENTRYPOINT ["python", "manage.py"]

# Set the default command
CMD ["runserver", "0.0.0.0:8000"]

# continuosly run container
#CMD tail -f /dev/null
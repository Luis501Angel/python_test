# 1. Use an official Python runtime as a parent image
# 'slim' images are smaller and often preferred for production
FROM python:3.11-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy the requirements file into the container at /app
COPY requirements.txt .

# 4. Install any needed packages specified in requirements.txt
# --no-cache-dir helps keep the image size small
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of the application code into the container
COPY . .

# 6. Specify the command to run when the container starts
CMD ["python", "main.py"]

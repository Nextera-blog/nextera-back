# Use official python as base image (Debian GNU/Linux 12 (bookworm))
FROM python:3.13.3

# Set python output straight to terminal without buffering first to get real-time logs
ENV PYTHONUNBUFFERED=1

# Set the root directory in the debian instance
WORKDIR /usr/src/app

# Copy the local requirements file to debian root directory
COPY requirements.txt ./

# Install packages and dependancies (without pip archives to minimise image size)
RUN pip install --no-cache-dir -r requirements.txt

# Copy all file from local repository (PRODUCTION)
COPY . .

# Document the future open port (the python server default port 8000)
EXPOSE 8000

# Execute migrations
CMD ["python",  "manage.py",  "migrate"]

# Run server
CMD ["python",  "manage.py",  "runserver", "0.0.0.0:8000"]
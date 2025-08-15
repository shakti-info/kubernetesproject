# Use an official Python runtime based on CentOS Stream
FROM python:3.9

# Set working directory
WORKDIR /app

# Install system dependencies for mysqlclient
RUN yum update -y && \
    yum install -y gcc mariadb-devel pkgconfig && \
    yum clean all

# Copy requirements
COPY requirements.txt .

# Install Python dependencies
RUN pip install mysqlclient
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Run the app
CMD ["python", "app.py"]

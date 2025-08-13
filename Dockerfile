# Use a lightweight Nginx image
FROM nginx:alpine

# Copy your custom index.html into Nginx's default HTML directory
  COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for the container
EXPOSE 80

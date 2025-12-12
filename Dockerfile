# Use the latest lightweight NGINX image
FROM nginx:stable-alpine

# Maintainer info (optional)
LABEL maintainer="vibeiot-project"

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your project files (HTML, JS, CSS, MP4 videos)
COPY . /usr/share/nginx/html/

# Expose port 80 so container can serve the site
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]

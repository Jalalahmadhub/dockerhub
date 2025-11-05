# Use an official nginx image
FROM nginx:stable-alpine

# Remove default nginx html
RUN rm -rf /usr/share/nginx/html/*

# Copy site files
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css

# Expose port (optional — container runs on 80)
EXPOSE 80

# Start nginx (default CMD in base image already starts nginx)

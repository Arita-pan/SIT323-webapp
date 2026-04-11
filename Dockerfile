# Use lightweight nginx alpine image
FROM nginx:alpine

# Remove default nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Copy our application files
COPY index.html /usr/share/nginx/html/index.html

# Create a directory for persistent storage mount point
RUN mkdir -p /usr/share/nginx/data

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

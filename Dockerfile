# Use the official lightweight Nginx image
FROM nginx:alpine

# Copy your prebuilt React app from 'dist' folder to Nginx's default HTML directory
COPY dist/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

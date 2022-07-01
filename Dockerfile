# FROM ubuntu
# RUN apt-get update
# RUN apt-get install nginx -y
# COPY . /var/www/html/
# EXPOSE 80
# # CMD ["service","nginx","start"]
# CMD ["nginx","-g","daemon off;"]


FROM ubuntu

# Install Nginx
RUN apt-get -y update && apt-get -y install nginx

COPY . /var/www/html/
# Copy the Nginx config
COPY default /etc/nginx/sites-available/default

# Expose the port for access
EXPOSE 80/tcp

# Run the Nginx server
CMD ["nginx", "-g", "daemon off;"]

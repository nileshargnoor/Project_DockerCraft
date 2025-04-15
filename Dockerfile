# Pull the minimal Ubuntu image ----> OS
FROM ubuntu
# Install Nginx ---------------> Runtime and addition libraries
RUN apt-get -y update && apt-get -y install nginx
# Copy the Nginx config ---------------> your app location shift 
COPY . /var/www/html
# Expose the port for access -------------> expose docker port number
EXPOSE 80/tcp
# Run the Nginx server ---------------> Run your Runtime
CMD ["/usr/sbin/nginx","-g","daemon off;"]
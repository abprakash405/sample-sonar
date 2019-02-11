#
# Nginx Dockerfile
#
# https://github.com/dockerfile/nginx
#

# Pull base image.
FROM ubuntu:latest

# Install Nginx.
RUN apt-get update
RUN apt-get install nginx -y

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
#CMD ["nginx"]

# Expose ports.
EXPOSE 80
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
#CMD ["nginx"]

#docker build -t ff -f Dockerfile-1 . 

#ENTRYPOINT [ "./entrypoint.sh" ]


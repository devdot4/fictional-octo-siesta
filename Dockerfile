# https://docs.docker.com/reference/dockerfile/ add Dockerfile DOCS

# Download Ubuntu 20.04
FROM ubuntu:20.04
# Label
LABEL  description "This is my first image" \
       maintainer  "Mike Ahmedov"
# Update and Install Telnet
RUN    apt-get update -y         && \
       apt-get install telnet -y && \
       apt-get install apache2 -y
# Add port 80
EXPOSE 80
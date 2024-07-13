# https://docs.docker.com/reference/dockerfile/ add Dockerfile DOCS

# Download Ubuntu 20.04
FROM ubuntu:20.04
# Give maintainer info
MAINTAINER "Mike Ahmedov"
# Update and Install Telnet
RUN apt-get update -y
RUN apt-get install telnet -y
# Add port 80
EXPOSE 80
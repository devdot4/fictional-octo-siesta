# https://docs.docker.com/reference/dockerfile/ add Dockerfile DOCS

# Download Ubuntu 20.04
FROM ubuntu:20.04
# Label
LABEL  description="This is my first image" \
       maintainer="Mike Ahmedov"
# Update and Install Telnet
RUN    DEBIAN_FRONTEND=noninteractive apt-get update -y          && \
       DEBIAN_FRONTEND=noninteractive apt-get install telnet -y  && \
       DEBIAN_FRONTEND=noninteractive apt-get install apache2 -y && \
       apt-get clean
# Add port 80
EXPOSE 80

# Run command
CMD ["apache2ctl", "-D", "FOREGROUND"]
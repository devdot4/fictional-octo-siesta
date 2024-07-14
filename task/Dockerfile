# Documentation
# https://docs.docker.com/reference/dockerfile/

# Download Ubuntu 20.04
FROM ubuntu:20.04
# Label
LABEL  description="This is my first task" \
       maintainer="Mike Ahmedov"
# Update and Install terraform, packer, telnet, and elinks
RUN       DEBIAN_FRONTEND=noninteractive apt update \
       && DEBIAN_FRONTEND=noninteractive apt install -y wget \
       && DEBIAN_FRONTEND=noninteractive apt install -y unzip \
       && DEBIAN_FRONTEND=noninteractive apt install -y vim \
       && DEBIAN_FRONTEND=noninteractive apt install -y openssh-client \
       && DEBIAN_FRONTEND=noninteractive apt install -y packer \
       && DEBIAN_FRONTEND=noninteractive apt install -y telnet \
       && DEBIAN_FRONTEND=noninteractive apt install -y elinks \
       && apt-get clean \
       # Download the latest version of Terraform from the official website.
       && wget https://releases.hashicorp.com/terraform/1.1.1/terraform_1.1.1_linux_amd64.zip \
       # Unzip the downloaded file:
       && unzip terraform_1.1.1_linux_amd64.zip \
       # Move the terraform binary to a directory in your system's PATH.
       && mv terraform /usr/local/bin/ \
       # Verify that Terraform is installed by checking its version:
       && terraform version
FROM jenkins/jenkins:lts
USER root
RUN apt-get update
RUN curl -sSL https://get.docker.com/ | sh
RUN sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

RUN sudo chmod +x /usr/local/bin/docker-compose
RUN sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

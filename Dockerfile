FROM jenkins/jenkins

USER root
RUN apt-get update && apt-get install -y tree nano curl sudo
RUN curl -sSL https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz | tar xvz -C /tmp/ && mv /tmp/docker/docker /usr/bin/docker
RUN curl -sSL https://github.com/docker/compose/releases/download/1.25.5/run.sh -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
RUN ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

FROM node:lts-buster
MAINTAINER Ruby on Racetracks

RUN node -v && npm --version && cat /etc/os-release && \
    apt-get update && apt-get upgrade -y && \
    apt-get install -y bash && \
    adduser --disabled-password --gecos '' winner

USER winner

WORKDIR /home/winner/myapp

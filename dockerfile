FROM ubuntu:24.04

ENV TERM linux
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y man inetutils-ping curl net-tools netcat-traditional zsh sudo git vim file

RUN curl -fsSL https://deb.nodesource.com/setup_22.x -o- | bash
RUN apt-get install -y nodejs

RUN chsh -s /bin/zsh
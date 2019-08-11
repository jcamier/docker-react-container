FROM ubuntu:16.04

MAINTAINER Jack Camier

# Set name of react app, you can change this name to whatever you chose.
ARG REACT_APP_NAME="react-app"

ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8
ENV LC_COLLATE=C
ENV LC_CTYPE=en_US.UTF-8

# Update Ubuntu to use ssh, vim, etc
# Install Node.js 8 and npm
RUN apt-get update
RUN apt-get -qq update
RUN apt-get install -y build-essential
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash
RUN apt-get install -y nodejs

RUN apt-get -y install wget git vim sudo ssh apt-utils

# Set working directory
RUN mkdir -p /usr/src/app
RUN cd /usr/src/app/
WORKDIR /usr/src/app

# Install react and create app
RUN npm install -g create-react-app
RUN create-react-app $REACT_APP_NAME
RUN cd /usr/src/app/$REACT_APP_NAME

WORKDIR /usr/src/app/$REACT_APP_NAME

EXPOSE 3000
CMD ["npm", "start"]

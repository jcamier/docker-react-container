FROM node:10.15.0-alpine

MAINTAINER Jack Camier

# Change the name below to whatever you want to call your react app
ARG REACT_APP_NAME="react-app"

# Update Alpine to use ssh and vim
RUN apk update && apk add openssh vim

# set working directory
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






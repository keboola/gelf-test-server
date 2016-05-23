FROM node:6-wheezy

EXPOSE 12201/udp

COPY . /home/
WORKDIR /home/
RUN npm install -g graygelf

ENTRYPOINT node /home/index.js

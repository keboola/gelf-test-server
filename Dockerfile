FROM node:4

EXPOSE 12201/udp

COPY . /home/
WORKDIR /home/
RUN npm install graygelf

ENTRYPOINT node /home/index.js

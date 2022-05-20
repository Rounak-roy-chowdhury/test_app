FROM node:12-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./
USER node
RUN npm install
COPY . /usr/src/app

CMD [ "node", "index.js" ]
EXPOSE 3000

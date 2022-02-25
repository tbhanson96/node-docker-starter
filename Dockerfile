ARG NODE_VERSION
FROM node:${NODE_VERSION}-alpine

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY package*.json ./
COPY dist ./
RUN npm install

CMD [ "node", "main.js" ]

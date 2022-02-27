ARG NODE_VERSION
FROM node:${NODE_VERSION}-alpine

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY package*.json ./
RUN npm install
COPY dist ./dist

CMD [ "npm", "run", "start:prod" ]

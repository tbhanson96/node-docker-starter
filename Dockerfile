ARG NODE_VERSION
FROM node:${NODE_VERSION}

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY package*.json ./
COPY dist ./
RUN npm install

CMD [ "node", "main.js" ]

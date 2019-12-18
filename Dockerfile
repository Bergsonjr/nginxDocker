FROM node:carbon

WORKDIR /usr/src/app

COPY crud-node-postgres/package*.json ./
RUN npm i

COPY ./crud-node-postgres/ .

RUN npm i -g bower
COPY crud-node-postgres/bower*.json ./
RUN bower i --allow-root

EXPOSE 3090

CMD ["node", "server.js"]
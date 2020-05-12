FROM node:8.16.0-alpine
RUN mkdir -p /home/node/app
WORKDIR /home/node/app
COPY --chown=node:node package*.json ./
RUN npm install
COPY --chown=node:node . .
EXPOSE 10666
CMD [ "npm", "start" ]

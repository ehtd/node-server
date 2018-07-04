FROM node:9.5.0

WORKDIR /app

COPY package*.json ./

RUN yarn global add nodemon
RUN yarn

EXPOSE 4000

CMD ["nodemon", "server.js"]
FROM node:9.5.0

WORKDIR /app

COPY package.json ./
COPY yarn.lock ./
COPY ./api ./

RUN yarn

EXPOSE 8000

CMD ["yarn", "run", "docker:start"]

#imagem oficial do Node.js
FROM node:14

ENV APP_PORT=8080

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]
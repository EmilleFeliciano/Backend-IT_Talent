#imagem oficial do Node.js
FROM node:14

#diretório de trabalho
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["npm", "start"]

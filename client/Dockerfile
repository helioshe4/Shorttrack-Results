FROM node:14.5.0-alpine

WORKDIR /src

COPY package.json package-lock.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]

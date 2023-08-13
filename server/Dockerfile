FROM node:14.5.0-alpine

WORKDIR /src

COPY package.json package-lock.json ./

RUN npm install

RUN npm install -g nodemon

#COPY . .

EXPOSE 80

CMD ["npm", "start"]

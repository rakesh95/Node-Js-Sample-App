FROM node:17.3.0-alpine3.14
RUN mkdir /node-app
WORKDIR /node-app
COPY package.json /node-app
RUN npm install
COPY . .
CMD ["npm", "start"]

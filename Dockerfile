MAINTAINER ASONGALEM ACHANBENG
FROM node:18-alpine
WORKDIR /react-internship-docker/
COPY public/ /react-internship-docker/public
COPY src/ /react-internship-docker/src
COPY package.json  /react-internship-docker/
RUN npm install
CMD ["npm", "start"]

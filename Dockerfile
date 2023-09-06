FROM node:18-alpine
WORKDIR /react-internship-docker/
COPY public/ src/  /react-internship-docker/
COPY package.json  /react-internship-docker/
RUN npm install -g npm@10.0.0
EXPOSE 3000
CMD ["npm", "start"]


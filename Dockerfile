FROM node:20-alpine
WORKDIR /react-internship-docker/
COPY public/ /react-internship-docker/public

FROM node:20-alpine
WORKDIR /react-internship-docker/
COPY src/ /react-internship-docker/src

FROM node:20-alpine
WORKDIR /react-internship-docker/
COPY package.json  /react-internship-docker/

RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
RUN echo "end of Dockerfile script"

FROM node:18-alpine
WORKDIR /react-internship-docker/
COPY package.json  /react-internship-docker/

FROM node:18-alpine
WORKDIR /react-internship-docker/
COPY public/ /react-internship-docker/public

FROM node:18-alpine
WORKDIR /react-internship-docker/
COPY src/ /react-internship-docker/src

RUN npm install
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]
RUN echo "end of Dockerfile script"

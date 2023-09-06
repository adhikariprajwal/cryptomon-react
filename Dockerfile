FROM node:18-alpine AS BUILD_IMAGE
WORKDIR /react-internship-docker/
COPY  package.json .
RUN npm install -g npm@10.0.0
COPY . .
#IMPLEMENTING MULTI STAGE BUILD
FROM node:18-alpine AS PRODUCTION_IMAGE
WORKDIR /react-internship-docker/
COPY  --from=BUILD_IMAGE /react-internship-docker/  /react-internship-docker/
EXPOSE 3000
CMD ["npm", "start"]



FROM node:18-alpine AS BUILD_IMAGE
WORKDIR /react-internship-docker/
COPY  package.json .
RUN npm install
COPY . .
RUN npm run build

#IMPLEMENTING MULTI STAGE BUILD
FROM node:18-alpine AS PRODUCTION_IMAGE
WORKDIR /react-internship-docker/
EXPOSE 3000
CMD ["npm", "start"]



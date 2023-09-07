FROM node:18-alpine AS BUILD_IMAGE
WORKDIR /react-internship-docker/
COPY  package.json .
RUN npm install --production
COPY . .
RUN npm run build

FROM node:18-alpine 
WORKDIR /react-internship-docker/
COPY --from=BUILD_IMAGE /react-internship-docker/build ./build
EXPOSE 3000
CMD ["npm", "start"]



FROM node:18-alpine as builder

RUN apk add --no-cache python3-dev gcc libc-dev musl-dev

WORKDIR /app


COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build

FROM nginx:alpine

COPY --from=builder /app/build /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
CMD ["npm", "start"]

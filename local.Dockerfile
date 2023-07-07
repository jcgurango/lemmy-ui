FROM node:20.2-alpine
RUN apk update && apk add curl yarn python3 build-base gcc wget git --no-cache

EXPOSE 1234
WORKDIR /app
COPY . .
CMD yarn install && yarn dev

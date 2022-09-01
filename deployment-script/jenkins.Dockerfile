FROM node:14.18.1-slim

WORKDIR /app
COPY . /app

ARG port
ENV envPort $port
RUN yarn install

# Run application
ENTRYPOINT PORT=${envPort} yarn run start

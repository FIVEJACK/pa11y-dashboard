FROM node:14.18.1-slim

WORKDIR /app
COPY . /app

ARG port
ENV envPort $port
RUN echo $NODE_ENV
RUN cat config/development.json
RUN yarn install

# Run application
ENTRYPOINT PORT=${envPort} yarn run start

FROM node:18-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PASSWORD=password

RUN mkdir -p /home/app

COPY ./app /home/app

EXPOSE 3000

WORKDIR /home/app

CMD node server.js
FROM nginx:1.11-alpine

RUN mkdir app

WORKDIR app

COPY . .

RUN apk add --update nodejs=6.10.3-r0

RUN

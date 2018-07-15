FROM nginx:1.15.1

RUN apt-get update
RUN apt-get install -y vim curl

RUN rm /etc/nginx/conf.d/*
COPY front-default.conf /etc/nginx/conf.d/front-default.conf

EXPOSE 80
EXPOSE 443

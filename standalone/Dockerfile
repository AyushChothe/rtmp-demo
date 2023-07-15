FROM tiangolo/nginx-rtmp:latest

RUN apt-get update && apt-get -y upgrade && apt-get install -y ffmpeg 

COPY ./nginx.conf /etc/nginx/nginx.conf

COPY ./scripts /var/scripts

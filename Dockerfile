FROM ubuntu:16.04
RUN apt-get update -y 
RUN apt-get install nginx -y
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 
RUN echo *"daemon off:" >> /etc/nginx/nginx.conf
EXPOSE 8080
CMD ["nginx"]

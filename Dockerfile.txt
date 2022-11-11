FROM ubuntu:20.04
RUN apt-get update \
&& apt-get install -y nginx \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
&& echo "daemon off;" >> /etc/nginx/nginx.conf

WORKDIR /app
EXPOSE 80
CMD ["nginx"]

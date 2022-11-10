FROM ubuntu:22.04
RUN apt-get update -y 
RUN apt-get install nginx -y
WORKDIR /gkrprj
EXPOSE 8888
CMD ["nginx", "-g", "daemon off;"]

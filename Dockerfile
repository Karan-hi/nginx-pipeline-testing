FROM nginx:latest

RUN apt-get update && apt-get install -y

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 8089 

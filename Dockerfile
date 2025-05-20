FROM nginx:latest

RUN apt-get update && apt-get install -y

EXPOSE 8089

CMD ["nginx", "-g", "daemon off;"] 

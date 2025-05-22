FROM nginx:latest

COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN apt-get update && apt-get install -y

CMD ["/bin/bash"]

EXPOSE 8089 

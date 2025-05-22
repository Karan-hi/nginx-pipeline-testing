FROM nginx:latest

RUN apt-get update && apt-get install -y

CMD ["/bin/bash"]

EXPOSE 8089 

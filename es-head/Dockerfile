FROM nginx:1.9
MAINTAINER Gabe Conradi <gummybearx@gmail.com>
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
WORKDIR /usr/share/nginx/html
RUN rm -rf * && \
  git clone https://github.com/mobz/elasticsearch-head.git . && \
  rm -rf .git
EXPOSE 80

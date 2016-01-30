FROM jwilder/nginx-proxy

# Bump docker-gen version to use whereLabel* functions
ENV DOCKER_GEN_VERSION 0.5.0

RUN wget https://github.com/jwilder/docker-gen/releases/download/$DOCKER_GEN_VERSION/docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz -O /docker-gen.tar.gz \
 && tar -C /usr/local/bin -xvzf /docker-gen.tar.gz \
  && rm /docker-gen.tar.gz

COPY ./nginx.tmpl /app/nginx.tmpl

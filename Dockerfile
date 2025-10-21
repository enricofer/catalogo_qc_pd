# Modeled from: https://vuejs.org/v2/cookbook/dockerize-vuejs-app.htm

# build stage
FROM node:lts-alpine as build-stage
ENV HTTPS_PROXY=http://172.20.0.252:3128
ENV HTTP_PROXY=http://172.20.0.252:3128
ENV TZ=Etc/UTC
RUN apk add --update tzdata git wget vim
RUN git config --global http.proxy http://172.20.0.252:3128
RUN git config --global https.proxy http://172.20.0.252:3128
RUN git clone https://github.com/enricofer/catalogo_qc_pd.git
RUN mv ./catalogo_qc_pd ./app
WORKDIR /app
COPY package*.json .
RUN npm install
RUN  npm run build

# production stage
FROM node:lts-alpine as production-stage
LABEL maintainer="Enrico Ferreguti <ferregutie@comune.padova.it>"
COPY --from=build-stage /app/.output /pub
EXPOSE 3000
CMD ["node", "/pub/server/index.mjs"]

# now run with e.g.
# docker run -it -p 8080:80 meggsimum/wegue:latest
#
# Or map your own application config file:
# docker run -it -p 8080:80 -v $(pwd)/app-conf-mine.json:/usr/share/nginx/html/static/app-conf.json meggsimum/wegue:latest

# DBTMAN:
# docker build -t frontend:latest
# docker run -it -p 8087:80 frontend:latest
#
# Or map your own application config file:
# docker run -it -p 8087:80 -v $(pwd)/dbtman_frontend_configuration.json:/usr/share/nginx/html/static/app-conf.json frontend:latest

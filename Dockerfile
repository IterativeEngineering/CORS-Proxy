FROM node:8

WORKDIR /usr/src/app

COPY package*.json ./

ENV CORSPROXY_HOST 0.0.0.0

# ENV CORSPROXY_ALLOWED_DOMAIN=...

RUN npm install

COPY . .

EXPOSE 1337

ENTRYPOINT ["bin/corsproxy"]
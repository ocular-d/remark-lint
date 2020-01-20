FROM node:10.18-alpine3.11
LABEL maintainer "ocular-d<sven@ocular-d.tech>"

WORKDIR /app
COPY package.json package-lock.json .remarkrc.yaml ./
# hadolint ignore=DL3018
RUN npm install \
    && npm link remark-cli \
    && apk add --no-cache git

WORKDIR /app/input
ENTRYPOINT ["/usr/local/bin/remark"]

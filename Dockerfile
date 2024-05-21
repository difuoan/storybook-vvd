FROM node:20-alpine

RUN apk add --no-cache git

ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}

# Add Git binary path to PATH
ENV PATH="${PATH}:/usr/bin/git"

WORKDIR /app

RUN chown -R node:node /app
USER node

EXPOSE ${PORT}
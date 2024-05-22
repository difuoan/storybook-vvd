FROM node:20-bookworm

ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}

# Add Git binary path to PATH
ENV PATH="${PATH}:/usr/bin/git"

WORKDIR /app

ENV PLAYWRIGHT_BROWSERS_PATH=/usr/playwright

RUN npm install
RUN npm i --save-dev wait-on

RUN npx playwright install --with-deps

RUN chown -R node:node /app
RUN chown -R node:node /usr/playwright
USER node

EXPOSE ${PORT}
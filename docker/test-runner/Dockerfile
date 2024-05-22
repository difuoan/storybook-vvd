FROM node:20-bookworm

# RUN apk add --no-cache git 

ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}

# Add Git binary path to PATH
ENV PATH="${PATH}:/usr/bin/git"

WORKDIR /app

# ENV PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD = 1
ENV PLAYWRIGHT_BROWSERS_PATH=/usr/playwright
RUN npx -y playwright@1.44.0 install --with-deps

RUN chown -R node:node /app
RUN chown -R node:node /usr/playwright
USER node

EXPOSE ${PORT}
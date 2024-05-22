#!/usr/bin/env sh

# config git user for chromatic to work
git config --global user.email "$GIT_EMAIL"

# # install supported browsers
# npx playwright install

# Start Storybook on the specified port
npx storybook dev -p $PORT
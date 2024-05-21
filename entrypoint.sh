#!/usr/bin/env sh

# Ensure npm does not show progress
npm set progress=false

# Install npm dependencies
npm install

# config git user for chromatic to work
git config --global user.email "$GIT_EMAIL"

# Start Storybook on the specified port
npx storybook dev -p $PORT
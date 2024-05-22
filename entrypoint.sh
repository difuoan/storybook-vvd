#!/usr/bin/env sh

# config git user for chromatic to work
git config --global user.email "$GIT_EMAIL"

# Start Storybook on the specified port
npx storybook dev -p $PORT & npm run vitest --watch & npx wait-on http://storybook:6006 && npx test-storybook --watch -- --coverage
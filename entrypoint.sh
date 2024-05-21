#!/usr/bin/env sh

npm set progress=false && npm install
npx storybook@latest add @chromatic-com/storybook
npx storybook dev -p $PORT
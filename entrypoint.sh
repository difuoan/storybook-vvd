#!/usr/bin/env sh

npm set progress=false && npm install
npx storybook dev -p $PORT
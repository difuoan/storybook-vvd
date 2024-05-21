#!/usr/bin/env sh

# Ensure npm does not show progress
npm set progress=false

# Install npm dependencies
npm install

# Verify Git installation and repository status
if ! git --version; then
  echo "Git is not installed or not found in PATH"
  exit 1
fi
if git --version; then
  echo "Git is installed and found in PATH"
fi

if ! git rev-parse --is-inside-work-tree; then
  echo "Not inside a Git repository."
  exit 1
fi
if git rev-parse --is-inside-work-tree; then
  echo "Inside a Git repository."
fi

git config --global user.email "$GIT_EMAIL"


# Add @chromatic-com/storybook plugin to Storybook
npx storybook@latest add @chromatic-com/storybook

# # Install Chromatic
# npm install --save-dev chromatic

# # Run Chromatic with your project token
# npx chromatic --project-token=$CHROMATIC_PROJECT_TOKEN

# Start Storybook on the specified port
npx storybook dev -p $PORT
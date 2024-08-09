#!/bin/bash
set -e

echo "Starting release process"

# Create a temporary package.json if it doesn't exist
if [ ! -f package.json ]; then
  echo '{}' > package.json
fi

# Install necessary Semantic Release plugins using git
npm init -y
npm install --save-dev @semantic-release/git
npm install --save-dev @semantic-release/changelog
npm install --save-dev @semantic-release/commit-analyzer
npm install --save-dev conventional-changelog-conventionalcommits conventional-changelog
npm install --save-dev @semantic-release/release-notes-generator conventional-changelog-conventionalcommits

# Export the repository URL
export REPO_URL="https://github.com/${{ github.repository }}"


# Run Semantic Release with the custom config path
npx semantic-release --repository-url "$REPO_URL" -e semantic-release --extends ./builds/releaserc.json


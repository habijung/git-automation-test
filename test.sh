#!/usr/bin/bash

git pull origin main
echo "-> git pull complete"

git add --all
echo "-> git add --all complete"

COMMIT_MESSAGE=${1}
git commit -m "${COMMIT_MESSAGE}"
echo "-> git commit complete"

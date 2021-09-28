#!/usr/bin/bash

git pull origin main
echo "-> git pull complete"

git add --all
git status
echo "-> git add --all complete"

if [ $# -eq 0 ]; then
	read -p "-> enter commit message : " COMMIT_MESSAGE
else
	COMMIT_MESSAGE=${1}
fi
git commit -m "${COMMIT_MESSAGE}"
echo "-> git commit complete"

git push origin HEAD:main
echo "-> git push complete"

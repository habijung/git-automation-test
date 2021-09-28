#!/usr/bin/bash

echo -e "\n-> git pull ..."
git pull origin main
echo -e "-> git pull complete"

echo -e "-> git add ..."
git add --all
echo -e "-> git add complete"

echo -e "-> git status"
git status

echo -e "-> git commit ..."

if [ $# -eq 0 ]; then
	read -p "-> Enter commit message : " COMMIT_MESSAGE
else
	COMMIT_MESSAGE=${1}
fi

git commit -m "${COMMIT_MESSAGE}"
echo -e "-> git commit complete"

echo -e "-> git push ..."
git push origin HEAD:main
echo -e "-> git push complete"

#!/usr/bin/bash

echo -e "\n-> git pull ...\n"
git pull origin main
echo -e "\n-> git pull complete"

echo -e "-> git add ...\n"
git add --all
echo -e "\n-> git add complete"

echo -e "-> git status\n"
git status

echo -e "\n-> git commit ..."

if [ $# -eq 0 ]; then
	read -p "-> Enter commit message : " COMMIT_MESSAGE
else
	COMMIT_MESSAGE=${1}
fi

git commit -m "${COMMIT_MESSAGE}"
echo -e "\n-> git commit complete"

echo -e "-> git push ...\n"
git push origin HEAD:main
echo -e "\n-> git push complete\n"

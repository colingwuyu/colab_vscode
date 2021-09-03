#!/bin/bash
if [ -d "/root/.vscode-server/extensions" ]; then rm -Rf /root/.vscode-server/extensions; fi
ln -s /content/gdrive/MyDrive/vscode/extensions /root/.vscode-server/

echo "enter git user name"
read git_user_name

echo "enter git user email"
read git_user_email

git config --global user.name $git_user_name
git config --global user.email $git_user_email
#!/bin/bash
echo "Installing VSCode Extensions"
extensions=( eamodio.gitlens ms-toolsai.jupyter christian-kohler.path-intellisense ms-python.vscode-pylance ms-python.python njpwerner.autodocstring littlefoxxteam.vscode-python-test-adapter hbenl.vscode-test-explorer redhat.vscode-yaml )
for i in "${extensions[@]}"
do
	code --install-extension $i
done

echo "Moving extensions to google drive"
mv /root/.vscode-server/extensions /content/gdrive/MyDrive/vscode/extensions
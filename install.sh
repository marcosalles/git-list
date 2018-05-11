#!/bin/bash

INSTALL_FILE=${HOME}/.git-list

echo "Installing the script to '${INSTALL_FILE}"

if [ -n "$(which curl)" ]; then
	curl -s -o "${INSTALL_FILE}" 'https://raw.githubusercontent.com/marcosalles/git-list/master/git-list'
elif [ -n "$(which wget)" ]; then
	wget -O "${INSTALL_FILE}" 'https://raw.githubusercontent.com/marcosalles/git-list/master/git-list'
else
	echo "Need 'curl' or 'wget' available on \$PATH to install git-list automatically!"
fi

git config --global alias.list '!bash '${HOME}'/.git-list'

echo "All done! You can now use 'git list [config]'."
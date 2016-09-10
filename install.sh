#!/bin/bash

git clone --bare https://github.com/moen-io/dotfiles "$HOME/.cfg"

function config {
	git --git-dir="$HOME/.cfg" --work-tree="$HOME" "$@"
}

mkdir -p .cfg-bak
config checkout

if [ $? = 0 ]; then
	echo "Checked out config."
else
	echo "Backing up pre-existing dot files."
	config checkout 2>&1 | egrep "\s+\." | awk "{'print $1'}" | xargs -I {} mv {} .cfg-bak/{}
fi;

config checkout
config config status.showUntrackedFiles no

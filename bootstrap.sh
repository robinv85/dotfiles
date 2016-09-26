#!/bin/bash
###########
#
# bootstrap.sh
#
# Dotfiles installation script
#
###############################

# OS
if [ "$(uname -s)" = "Darwin" ]; then
    OS="OSX"
else
    OS=`uname -s`
fi

# Go to script location
cd "$(dirname "${BASH_SOURCE[@]}")" || exit;

# Get script path
dir=$(pwd)

# List of files & folders to symlink
list="bashrc profile bash_profile bash_prompt osx editorconfig tmux.conf gitignore"

#todo: separate config for osx (.osx) or (osx/)

# Create symlinks
link_dotfiles() {
  echo "Linking dotfiles"
  for item in $list; do
    if [ -e ~/."$item" ]
    then
      echo "item (file/folder) exists - creating ~/backup/.$item"
      [ -d ~/backup ] ||  mkdir ~/backup
      mv ~/."$item" ~/backup/."$item"
    else
      echo "creating ~/.$item"
    fi
    ln -F -s -v "$dir"/"$item" ~/."$item"
  done
}

link_dotfiles

# Create .aliases file in home directory if it doesn't exist
if [ -e ~/.aliases ]
then
	echo "~/.aliases exists"
else
	echo "Creating ./aliases file"
	touch ~/.aliases
	echo "# Add local aliases" >> ~/.aliases
fi

# Use the global .gitignore file
git config --global core.excludesfile ~/.gitignore

# Todo : move to setup script
# Install vim bundles via Vundle
# vim +BundleInstall +qall

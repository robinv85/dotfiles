#!/bin/bash
###########
#
# bootstrap.sh
#
# Dotfiles installation script
#
###############################

# Go to script location
cd "$(dirname "${BASH_SOURCE[@]}")" || exit;

# Get script path
dir=$(pwd)

# List of files & folders to symlink
list="bashrc profile bash_profile bash_prompt osx editorconfig tmux.conf gitignore"

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

# Use the global .gitignore file
git config --global core.excludesfile ~/.gitignore

# Install vim bundles via Vundle
vim +BundleInstall +qall

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
cd "$(dirname "${BASH_SOURCE}")"

# Get script path
dir=$(pwd)

# List of files & folders to symlink
list="bashrc profile bash_profile bash_prompt vim vimrc osx editorconfig tmux.conf"

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

# Install vim bundles via Vundle
vim +BundleInstall +qall

#!/bin/bash
###########
#
# bootstrap.sh
#
# Dotfiles installation script
#
###############################

# Go to script location
cd "$(dirname "${BASH_SOURCE}")"

# Variables
# ---------

# Get script path
dir=`pwd`

# List of files & folder to symlink
list="bashrc profile bash_profile bash_prompt vim vimrc osx"

# Create symlinks
link_dots() {
  echo "Linking dotfiles"
  for item in $list; do
    if [ -e ~/.$item ]
    then
      echo "item (file/folder) exists - creating ~/backup/.$item"
      [ -d ~/backup ] ||  mkdir ~/backup
      mv ~/.$item ~/backup/.$item
    else
      echo "creating ~/.$item"
    fi
    ln -F -s -v $dir/$item ~/.$item
  done
}

# TODO : improve symlinking & file structure e.g. using .symlink extension
# TODO : setup ( install & config: git, ruby, node )
# TODO : create command with options: overwrite, backup, uninstall, update

link_dots

# Install vim bundles via Vundle
vim +BundleInstall +qall


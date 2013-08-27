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
list="bashrc profile bash_profile vim osx"

# Create symlinks
link_dots() {
  echo "Linking dotfiles"
  for item in $list; do
    ln -s -i -v $dir/$item ~/.$item
  done

  #TODO: fix this ish!
  mv ~/.vim/vim ~/.vim
  mv ~/.vim/vimrc ~/.vimrc
}

# TODO : setup git
link_dots


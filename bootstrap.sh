#!/bin/bash
###########
#
# install.sh
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

# List of files to symlink
dotfiles="bashrc profile bash_profile vimrc osx"

# Create symlinks
link_dots() {
  echo "Linking dotfiles"
  for file in $dotfiles; do
    ln -s -i -v $dir/$file ~/.$file
  done
}

# TODO : setup git

link_dots


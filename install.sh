#!/bin/bash
###########
#
#  install.sh
#
#  Create symlinks for dotfiles
#
###############################

# Variables
# ---------

dev="$HOME/Dev"
dotfiles="$dev/dotfiles"
files = "bashrc profile bash_profile vimrc"	# list of files to symlink

# Function
# --------

for file in $files; do
  echo "Creating symlinks"
  ln -s $dir/$file $/.$file
done


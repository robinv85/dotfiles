Dotfiles
========

My OS X & \*nix configuration settings. 
I'm still learning git, and I'm fairly new to OS X and Linux/Unix so this repo is still under construction, use at your own risk (careful with overwriting files)

Todo
-----

* Group into folders
* Figure out Vim bundles / submodules (added Vundle as submodule, and run bundle install from the bootstrap script, manage plugins within vim/vundles.vim)
* Improve installer: different OS's, protect overwriting files, make backup, uninstall, bash commands
* put editor preferences into editorconfig..

Installation
------------

Clone this repo anywhere, e.g. to ~/dots, then run bootstrap.sh and the following files & folders are automatically symlinked into your $HOME directory.

    .profile
    .bash_profile
    .bashrc
    .vim/
    .vimrc
    .osx

Kudos
-----

Inspired by ODT (Other People's Dotfiles) and some articles

* [Github does dotfiles](http://dotfiles.github.io/) and [@octodots](http://www.twitter.com/octodots) on Twitter
* [Mathias Bynens' dotfiles](https://github.com/mathiasbynens/dotfiles)
* [Nicolas Gallagher's dotfiles](https://github.com/necolas/dotfiles)
* [Yan Pritzker's dotfiles](https://github.com/skwp/dotfiles)
* [Holman does dotfiles](https://github.com/holman/dotfiles)
* ["Cowboy" Ben Alman's dotfiles](https://github.com/cowboy/dotfiles)


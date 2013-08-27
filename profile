# ================================================================== #
# 
# ~/.profile
# 
# Global settings for all shells
#
# ================================================================== #

#echo 'loading ~/.profile'


# PATH
PATH=$PATH:/Applications/VirtualBox.app/Contents/MacOS
export PATH

# Put rbenv in PATH if installed
if [ -f ~/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi


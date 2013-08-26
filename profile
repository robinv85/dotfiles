# ================================================================== #
# 
# ~/.profile
# 
# Global settings for all shells
#
# ================================================================== #

echo 'loading ~/.profile'

# -----
# PATH
# -----

PATH=$PATH:/Applications/VirtualBox.app/Contents/MacOS
export PATH
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH" 

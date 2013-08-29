# ================================================================== #
#
# ~/.bash_profile
#
# Executed from bash shell at login
#
# ================================================================== #

# Get environment variables
if [ -f ~/.profile ]; then
 . ~/.profile; 
fi

# Get bash-only presets
if [ -f ~/.bashrc ]; then
 . ~/.bashrc; 
fi

if [ -f ~/.bash_prompt ]; then
  . ~/.bash_prompt
fi

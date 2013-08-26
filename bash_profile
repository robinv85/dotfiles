# ================================================================== #
#
# ~/.bash_profile
#
# For login shells
#
# ================================================================== #

echo "Loading ~/.bash_profile"

# Get environment variables
if [ -f ~/.profile ]; then
 . ~/.profile; 
fi

# Get bash-only aliases
if [ -f ~/.bashrc ]; then
 . ~/.bashrc; 
fi

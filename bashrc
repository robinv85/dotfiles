# ================================================================== #
#
# ~/.bashrc 
#
# Bash-specific settings 
# For interactive non-login shell
#
# ================================================================== #

# ================================================================== #
# Aliases
# ================================================================== #

#echo 'loading ~/.bashrc'

# -------
# Common
# -------

alias c='clear'
alias h='history'
alias pre='open -a Preview'

# ---------------------
# Changing directories
# ---------------------

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'

# -----------
# ls helpers
# -----------

# Detect which OS and ovverride default with color output
if ls --color > /dev/null 2>&1; then # GNU `ls`
  alias ls='ls --color'
else # OS X `ls`
  alias ls='ls -G'
fi
# alias ls='ls ${colorflag}'	# Override default ls with color output
alias lx='ls -lXB'	        	# Sort by extension
alias lk='ls -lSr'	        	# Sort by size, biggest last
alias ll='ls -la'	          	# Long listing format
alias lm='ll | more'	      	# pipe through 'more'
alias la='ll -a'	          	# show hidden

# -----------
#
# -----------

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# ----
# Git
# ----

#alias g='git status'

function g {
  if [[ $# > 0 ]]; then
    git "$@"
  else
    git status --short --branch
  fi
}

alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit -a'
alias gcm='git commit -m'
alias gcl='git clone'
alias gco='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gl='git log'
alias gh='github'
alias gi='vi .gitignore'
alias gps='git push'
alias gpl='git pull'

# ---------------
# Sublime Text 2
# ---------------

alias s='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

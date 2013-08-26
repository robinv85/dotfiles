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
alias gohome='cd ~'

# ---------------------
# Changing directories
# ---------------------

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../'

# -----------
# ls helpers
# -----------

alias ls='ls -G'		# Override default ls with color output
alias lx='ls -lXB'		# Sort by extension
alias lk='ls -lSr'		# Sort by size, biggest last
alias ll='ls -la'		# Long listing format
alias lm='ll | more'		# pipe through 'more'
alias la='ll -a'		# show hidden

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

alias slim='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

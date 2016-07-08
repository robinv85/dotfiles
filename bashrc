# ================================================================== #
#
# ~/.bashrc
#
# Bash-specific settings
# For interactive non-login shells
#
# ================================================================== #

# ------------------------------------------------------------------
# Settings
# ------------------------------------------------------------------

# Vi mode
set -o vi


# ------------------------------------------------------------------
# Aliases
# ------------------------------------------------------------------

# Common
# ------

alias c='clear'
alias h='history'
alias pre='open -a Preview'

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"


# Changing directories
# --------------------

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../..'


# ls helpers
# ----------

alias lx='ls -lXB'      # Sort by extension
alias lk='ls -lSr'      # Sort by size, biggest last
alias ll='ls -la'       # Long listing format
alias lm='ll | more'    # pipe through 'more'
alias la='ll -a'        # show hidden


# Finder
# ------

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"


# Git
# ---

function g {
  if [[ $# > 0 ]]; then
    git "$@"
  else
    git status --short --branch
  fi
}

function glog() {
  git log --pretty=format:"%h %ai %an"$'\t'"%s" "$@" | expand
  echo ''
}

alias gh='github'

# NPM
# ---

alias nin='npm install'
alias nins='npm install --save'
alias ninsd='npm install --save-dev'
alias ning='npm install -g'
alias nun='npm uninstall'
alias nup='npm update'


# Grunt
# -----

function grin() {
  npm install --save-dev grunt-"$@"
}


# Load .aliases
# -------------
source ~/.aliases


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

# Start a local webserver with the built-in Python module
function serve {
  if [[ $# > 0 ]]; then
    python -m SimpleHTTPServer "$@"
  else
    python -m SimpleHTTPServer
  fi
}

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

alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit -a'
alias gcam='git commit -am'
alias gcm='git commit -m'
alias gcl='git clone'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gd='git diff'
alias gf='git fetch'
alias gl='git log'
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
#git log oneline, including author
function glpn() {
  git log --pretty=format:"%h %ai %an"$'\t'"%s" "$@" | expand
  echo ''
}
alias gm='git merge'
alias gh='github'
alias gi='vi .gitignore'
alias gps='git push'
alias gpso='git push origin'
alias gpsom='git push origin master'
alias gpl='git pull'
alias gr='git remote'
alias gs='git status'
alias gsm='git submodule'
alias gup='git fetch upstream && git merge upstream/master'
alias gsup='git submodule sync && git submodule update --init'


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

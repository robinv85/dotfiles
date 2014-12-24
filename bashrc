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

# LS colors for dark background
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Detect which OS and ovverride default ls with colored output
if ls --color > /dev/null 2>&1; then # GNU `ls`
  alias ls='ls --color'
else # OS X `ls`
  alias ls='ls -G'
fi

# ------------------------------------------------------------------
# Aliases
# ------------------------------------------------------------------

# Common
# ------

alias c='clear'
alias h='history'
alias pre='open -a Preview'


# Changing directories
# --------------------

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../..'


# ls helpers
# ----------

alias lx='ls -lXB'	        	# Sort by extension
alias lk='ls -lSr'	        	# Sort by size, biggest last
alias ll='ls -la'	          	# Long listing format
alias lm='ll | more'	      	# pipe through 'more'
alias la='ll -a'	          	# show hidden


# Finder
# ------

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"


# Go to
# -----

alias dev='cd ~/Dev'


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


# Applications
# ------------

# Firefox
alias ff="open -a firefox"

# Google Chrome
alias chrome="open -a 'Google Chrome'"

# Safari
alias safari="open -a safari"

# Edge Code
alias ec="open -a 'Adobe Edge Code CC'"


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


# Bower
# -----

alias bis='bower install --save'

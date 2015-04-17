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

function glog() {
  git log --pretty=format:"%h %ai %an"$'\t'"%s" "$@" | expand
  echo ''
}

alias gh='github'

# Applications
# ------------

# Firefox
alias ff="open -a firefox"

# Google Chrome
alias chrome="open -a 'Google Chrome'"

# Safari
alias safari="open -a safari"


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



# NVM 
#----
source /usr/local/opt/nvm/nvm.sh


# Karma needs to know the Chrome path
export CHROME_BIN=/opt/homebrew-cask/Caskroom/google-chrome/latest/Google\ Chrome.app/Contents/MacOS/Google\ Chrome

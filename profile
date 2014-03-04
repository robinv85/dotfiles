# ================================================================== #
#
# ~/.profile
#
# These settings are accessible to all shells
#
# ================================================================== #

# PATH
# ----

# Put rbenv in PATH if installed
if [ -f ~/.rbenv ]; then
  PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

#put $HOME/bin and its subdirectories in PATH (ignores */.git/* so you can safely throw submodules in here):
if [[ -d ~/bin ]] ; then
    currentIFS=$IFS; IFS=$'\n'

    for d in $(find ~/bin -type d -a \! -wholename '*/.git/*'); do
        PATH="$d:$PATH"
    done

    IFS="$currentIFS"; unset currentIFS
fi

# use MAMP for PHP
PATH=/Applications/MAMP/bin/php/php5.4.10/bin:$PATH

export MONGO_PATH=/usr/local/mongodb
PATH=$PATH:$MONGO_PATH/bin

export PATH

# ================================================================== #
#
# ~/.profile
#
# These settings are accessible to all shells
#
# ================================================================== #

#echo 'loading ~/.profile'


# PATH
# ----

PATH=$PATH:/Applications/VirtualBox.app/Contents/MacOS

# Put rbenv in PATH if installed
if [ -f ~/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
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

export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin

export PATH

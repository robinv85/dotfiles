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
if [ -d ~/.rbenv ]; then
  PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# Put $HOME/bin and its subdirectories in PATH (ignores */.git/* so you can safely throw submodules in here):
if [[ -d ~/bin ]] ; then
    currentIFS=$IFS; IFS=$'\n'

    for d in $(find ~/bin -type d -a \! -wholename '*/.git/*'); do
        PATH="$d:$PATH"
    done

    IFS="$currentIFS"; unset currentIFS
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export GOPATH=$HOME/go
export GOROOT=$HOME/go
PATH=$PATH:$GOROOT/bin

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk/Contents/Home"

export ANDROID_HOME="/Users/robin/Library/Android/sdk"
export ANDROID_SDK_ROOT=$ANDROID_HOME
export ANDROID_NDK_HOME="/usr/local/share/android-ndk"

export PATH

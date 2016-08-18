## CLI Color
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Review
# export PATH=$PATH:/Users/KeishinYokomaku/Documents/Android/repository/review/bin

# Buck
# export PATH=$PATH:/Users/KeishinYokomaku/Documents/Android/repository/buck/bin

# Java
# export JAVA8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home
# export JAVA7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home

# Android commands
# export ANDROID_HOME=/usr/local/Cellar/android-sdk/22.6.2/
# export ANDROID_NDK=/usr/local/Cellar/android-ndk/r9d
# export PATH=$PATH:/usr/local/Cellar/android-sdk/22.6.2/tools/
# export PATH=~/bin:$PATH
# export PATH=$PATH:/usr/local/Cellar/android-sdk/22.6.2/bin/\
# export PATH=$PATH:/usr/local/Cellar/android-sdk/22.6.2/platform-tools/
# export PATH=/Users/KeishinYokomaku/Documents/Android/repository/fb-adb/build:$PATH

## Pyenv
# export PATH=$PATH:$HOME/.pyenv/shims

## Go
# export GOPATH=$HOME/gocode/

## Git Prompt Settings
source ~/.git-prompt.sh

if [ -f /usr/local/Cellar/git/1.9.3/etc/bash_completion.d/git-completion.bash ]; then
	. /usr/local/Cellar/git/1.9.3/etc/bash_completion.d/git-completion.bash
fi

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

finish () {
  if [ $? -eq 0 ]; then
    afplay /System/Library/Components/CoreAudio.component/Contents/SharedSupport/SystemSounds/system/burn\ complete.aif
  else
    afplay /System/Library/Components/CoreAudio.component/Contents/SharedSupport/SystemSounds/system/Volume\ Mount.aif
  fi
}

# Docker
# export DOCKER_HOST=tcp://192.168.59.103:2376
# export DOCKER_CERT_PATH=/Users/KeishinYokomaku/.boot2docker/certs/boot2docker-vm
# export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://localhost:4243

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

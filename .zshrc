# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh
source ~/.profile

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git z osx rbenv rails brew heroku sublime autojump rspec ntab docker)

source $ZSH/oh-my-zsh.sh

## Aliases
# Navigation
alias dev="cd ~/dev"

# Docker
alias dps="docker ps"
alias dcf="docker-compose -f ${1:-docker-compose.yaml}"
alias dcd="dcf down"
alias dcud="dcf up -d"

# K8
alias kc="kubectl"
alias kns="kubens"
alias kcs="kubectl -n sandbox"

# IDE
#alias st="open -a /Applications/Sublime\ Text.app"
#alias vsc="open -a /Applications/Visual\ Studio\ Code.app"

# Rust
alias rust-musl-builder='docker run --rm -it -v "$(pwd)/cargo-git":/home/rust/.cargo/git -v "$(pwd)/cargo-registry":/home/rust/.cargo/registry -v "$(pwd)/cargo-target":/home/rust/src/target -v "$(pwd)":/home/rust/src ekidd/rust-musl-builder:1.36.0'
# eval $(thefuck --alias)

alias rust-musl-builder-nightly='docker run --cpus=$(nproc) --rm -it $MUSL_FLAGS -v "$(pwd)/cargo-git":/home/rust/.cargo/git -v "$(pwd)/cargo-registry":/home/rust/.cargo/registry -v "$(pwd)/cargo-target":/home/rust/src/target -v "$(pwd)":/home/rust/src rust-musl-builder-nightly'

alias weather="curl wttr.in"

# User configuration

export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/CrossPack-AVR/bin:/usr/local/git/bin:/usr/texbin"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"



[ -s "/home/geps/.jabba/jabba.sh" ] && source "/home/geps/.jabba/jabba.sh"

jabba use default

source ~/.profile

## Dev Paths

# Cargo
export PATH="$PATH:$HOME/.cargo/bin:$HOME/.local/bin"
# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=/usr/local/share/npm/bin:$(npm bin):$PATH
# Android
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
# Spark
export SPARK_HOME=/opt/spark
export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin
# Python
export PYSPARK_PYTHON=/usr/bin/python3
# Go
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

## System Path
export PATH=$PATH:/snap/bin

## Kubernetes
#export KUBECONFIG=/etc/rancher/k3s/k3s.yaml
alias k=kubectl
source <(kubectl completion zsh)

#source <(ory completion zsh)

#autoload -Uz compinit
#compinit

function localip()
{
  hostname -I | awk '{print $1}'
}

alias mylocalip=localip

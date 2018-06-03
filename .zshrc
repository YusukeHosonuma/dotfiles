# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(bundler git osx rake ruby zsh-syntax-highlighting zsh-completions)

# zsh-completion
autoload -U compinit && compinit -u

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# MyTools
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.ghq/github.com/YusukeHosonuma/dotfiles/sh:$PATH"

# Ruby
export PATH="$HOME/.rbenv/shims:$PATH"

# Java
export JAVA_HOME=`/usr/libexec/java_home`

# Haskell Stack
export PATH="/usr/local/Cellar/haskell-stack/1.6.3:$PATH"

# CMake
export PATH="$PATH:/Applications/CMake.app/Contents/bin"
export PATH="/Users/yusuke/.local/bin:$PATH"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Go
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"

# Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/bin:$PATH"
export PATH="$ANDROID_HOME/tools:$PATH"
export PATH="$ANDROID_HOME/tools/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"

# Python
export PATH="$HOME/Library/Python/3.6/bin:$PATH"

# Flutter
export PATH="$HOME/var/flutter/bin:$PATH"

# Node.js
export PATH=$HOME/.nodebrew/current/bin:$PATH

source $HOME/.local.sh
source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias hs="stack runghc"
alias ghci="stack ghci"
alias ghc="stack ghc"

# Git
alias co="git checkout"
alias push="git push"
alias pull="git pull"
alias reseth="git reset --hard"
alias fetch="git fetch"
alias br="git branch"
alias gs="git status -b"
alias delete-merged='git branch --merged | grep -v "*" | xargs -I{} git branch -d {}'

# Hub
alias pr='hub pull-request'

# Tig
alias ts="tig status"
# alias tig_review="tig --reverse -w $(git merge-base origin/master HEAD)...HEAD"

# hub
function git(){hub "$@"}

# ghq
alias g='cd $(ghq root)/$(ghq list | peco)'

# xcode-open
alias xopen="xcode-open"

# other
alias tlint="npm run textlint"

# zsh-syntax-highlighting (via brew)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# sdkman
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

prompt_context() () { }

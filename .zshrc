# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/gregorywhite/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="spaceship"
SPACESHIP_RUBY_SHOW=false
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_12HR=true
SPACESHIP_PROMPT_TRUNC=2

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
plugins=(globalias zsh-autosuggestions zsh-syntax-highlighting autojump)

source $ZSH/oh-my-zsh.sh

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


# Use rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

# source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

alias a='ls -Gfa'
alias b='bundle install'
alias c='clear'
alias cdd='cd ~/dotfiles'
alias cds='cd ~/google\ drive/ucf/spring\ 2016'
alias cdp='cd ~/railsapps/push'
alias cde='cd ~/railsapps/edge'
alias co='git co'
alias cob='git cob'
alias cod='git cod'
alias d='git diff'
alias dd='git diff develop'
alias dc='git diff --cached'
alias dp='git diff HEAD~1'
alias rdm='rails rake apartment:migrate || rails rake db:migrate'
alias rdr='rails rake apartment:rollback || rails rake db:rollback'
alias rds='rails rake db:migrate:status'
alias rdt='rails rake db:test:prepare'
alias eclim="/Applications/Eclipse.app/Contents/Eclipse/eclimd"
alias ectags="`brew --prefix`/bin/ctags -R --exclude=.git --exclude=log --exclude=public --exclude=tsv --exclude=db *"
alias ga='git a'
alias gaf='git add '
alias gc='git commit'
alias gca='git commit --amend --reuse-message=HEAD'
alias gcm='git commit -m'
alias gco='git co '
alias gd='git diff'
alias gdd='git diff develop'
alias gdu='git diff "@{u}"'
alias gr='git reset'
alias m='git merge'
alias grh='git reset --hard HEAD'
alias grs='git reset --soft HEAD~1'
alias sl='git stash list'
alias sps='git stash show -p stash@"{0}"'
alias ss='git stash'
alias sp='git stash pop'
alias gs='git status'
alias grd='git rebase -i develop'
alias l='git cl'
alias lg='git clg'
alias le='lein exec'
alias lr='lein repl'
alias oif='open -a finder .'
alias md='git merge develop'
alias pctags="`brew --prefix`/bin/ctags -R --exclude=.git --exclude=log --exclude=tmp --exclude=public --exclude=db --exclude=node *"
alias please='sudo $(history -p !!)'
alias pd='git pull'
alias pu='git push'
alias zc='rails console'
alias zcs='rails console --sandbox'
alias rc='rubocop -f clang'
alias rd='rubodiff'
alias rs='rspec '
alias rsf='rspec -t "~all" spec/functional'
alias rsp='jruby --dev -S rspec'
alias s='git status'
alias sb='git save '
alias sz='source ~/.zshrc'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias tns='tmux new-session -s'
alias t="TERM=screen-256color-bce tmux"
alias te='teamocil --here edge'
alias tp='teamocil --here push'
alias tv='teamocil --here vim'
alias tu='teamocil uniticket'
alias v='vim'
alias vn='vim ~/Google\ Drive/notes.markdown'
alias vz='vim ~/.zshrc && source ~/.zshrc'

# use vi mode
# export KEYTIMEOUT=1
# bindkey -v
bindkey '^p' up-history
bindkey '^n' down-history
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/lein" # add lein
export TERM='xterm-256color'
export PGDATA=/usr/local/var/postgres
export EDITOR='vim'

export NVM_DIR="/Users/gregorywhite/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

bindkey '^f' autosuggest-accept

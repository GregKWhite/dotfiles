#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

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
alias rdm='zeus rake apartment:migrate || zeus rake db:migrate'
alias rdr='zeus rake apartment:rollback || zeus rake db:rollback'
alias rds='zeus rake db:migrate:status'
alias rdt='zeus rake db:test:prepare'
alias eclim="/Applications/Eclipse.app/Contents/Eclipse/eclimd"
alias ectags="`brew --prefix`/bin/ctags -R --exclude=.git --exclude=log --exclude=public --exclude=tsv --exclude=db *"
alias ga='git a'
alias gaf='git add '
alias gc='git commit'
alias gca='git commit --amend --reuse-message=HEAD'
alias gcm='git commit -m'
alias gco='git co '
alias gd='git diff && echo "Use d!!"'
alias gdd='git diff develop'
alias gdu='git diff @{u}'
alias gr='git reset'
alias m='git merge'
alias grh='git reset --hard HEAD'
alias grs='git reset --soft HEAD~1'
alias sl='git stash list'
alias sps='git stash show -p stash@"{0}"'
alias ss='git stash'
alias sp='git stash pop'
alias gs='git status && echo "Use s!!"'
alias grd='git rebase -i develop'
alias l='git cl'
alias lg='git clg'
alias le='lein exec'
alias lr='lein repl'
alias oif='open -a finder .'
alias md='git merge develop'
alias pctags="`brew --prefix`/bin/ctags -R --exclude=.git --exclude=log --exclude=tmp --exclude=public --exclude=db *"
alias please='sudo $(history -p !!)'
alias pd='git pull'
alias pu='git push'
alias zc='zeus console'
alias zcs='zeus console --sandbox'
alias rc='rubocop -f clang'
alias rd='rubodiff'
alias rs='zeus test '
alias rsf='rspec -t "~all" spec/functional'
alias s='git status'
alias sb='git save '
alias sz='source ~/.zshrc'
alias tls='tmux ls'
alias t="TERM=screen-256color-bce tmux"
alias te='teamocil --here edge'
alias tp='teamocil --here push'
alias tv='teamocil --here vim'
alias tu='teamocil uniticket'
alias v='vim'
alias vn='vim ~/Google\ Drive/notes.markdown'
alias vz='vim ~/.zshrc && source ~/.zshrc'

# use vi mode
export KEYTIMEOUT=1
bindkey -v
bindkey '^p' up-history
bindkey '^n' down-history
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/lein" # add lein
export TERM='xterm-256color'
export PGDATA=/usr/local/var/postgres
export EDITOR='vim'

# Adds newer pure prompt to $fpath
fpath=( "$HOME/.zfunctions" $fpath )

autoload -U promptinit && promptinit
prompt pure

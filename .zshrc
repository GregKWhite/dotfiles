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
alias cds='cd ~/google\ drive/ucf/fall\ 2015'
alias cdp='cd ~/railsapps/push'
alias cde='cd ~/railsapps/edge'
alias co='git co'
alias cob='git cob'
alias cod='git cod'
alias d='git diff'
alias dd='git diff develop'
alias rdm='rake apartment:migrate || rake db:migrate'
alias rdr='rake apartment:rollback || rake  db:rollback'
alias rds='rake db:migrate:status'
alias rdt='rake db:test:prepare'
alias eclim="/Applications/Eclipse.app/Contents/Eclipse/eclimd"
alias ectags="`brew --prefix`/bin/ctags -R --exclude=.git --exclude=log --exclude=public --exclude=tsv --exclude=db *"
alias ga='git a'
alias gc='git commit'
alias gca='git commit --amend --reuse-message=HEAD'
alias gcm='git commit -m'
alias gco='git co '
alias gd='git diff && echo "Use d!!"'
alias gdd='git diff develop'
alias gdu='git diff @{u}'
alias gr='git reset'
alias grh='git reset --hard HEAD'
alias grs='git reset --soft HEAD~1'
alias gs='git status && echo "Use s!!"'
alias l='git cl'
alias le='lein exec'
alias lr='lein repl'
alias oif='open -a finder .'
alias md='git merge develop'
alias pctags="`brew --prefix`/bin/ctags -R --exclude=.git --exclude=log --exclude=tmp --exclude=public --exclude=db *"
alias please='sudo $(history -p !!)'
alias pd='git pull'
alias pu='git push'
alias rc='zeus console'
alias rcs='zeus console --sandbox'
alias rcp='rubocop -f clang'
alias rd='rubodiff'
alias rs='zeus test '
alias s='git status'
alias sb='git save '
alias sz='source ~/.zshrc'
alias tls='tmux ls'
alias t="TERM=screen-256color-bce tmux"
alias te='teamocil --here edge'
alias tp='teamocil --here push'
alias tu='teamocil uniticket'
alias v='vim'
alias vz='vim ~/.zshrc && source ~/.zshrc'
export TERM='xterm-256color'

# use vi mode
export KEYTIMEOUT=1
bindkey -v
bindkey '^p' up-history
bindkey '^n' down-history
bindkey "^R" history-incremental-search-backward

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

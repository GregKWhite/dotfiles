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

# Customize to your needs...
alias a='ls -Gfa'
alias c='clear'
alias cdd='cd ~/dotfiles'
alias cds='cd ~/google\ drive/ucf/fall\ 2015'
alias co='git co'
alias cob='git cob'
alias cod='git cod'
alias rdm='rake apartment:migrate || rake db:migrate'
alias rdr='rake apartment:rollback || rake  db:rollback'
alias rds='rake db:migrate:status'
alias eclim="/Applications/Eclipse.app/Contents/Eclipse/eclimd"
alias ectags="`brew --prefix`/bin/ctags -R --exclude=.git --exclude=log --exclude=public --exclude=tsv --exclude=db *"
alias ga='git a'
alias gc='git commit'
alias gca='git commit --amend --reuse-message=HEAD'
alias gcm='git commit -m'
alias gd='git diff'
alias gdd='git diff develop'
alias gdu='git diff @{u}'
alias gl='git cl'
alias gr='git reset'
alias grh='git reset --hard HEAD'
alias grs='git reset --soft HEAD~1'
alias gs='git status'
alias le='lein exec'
alias lr='lein repl'
alias oif='open -a finder .'
alias pctags="`brew --prefix`/bin/ctags -R --exclude=.git --exclude=log --exclude=tmp --exclude=public --exclude=db *"
alias please='sudo $(history -p !!)'
alias pull='git pull'
alias push='git push'
alias rc='rubocop -f clang'
alias rd='rubodiff'
alias rs='rspec'
alias rsa='rspec -t "~all"'
alias sz='source ~/.zshrc'
alias tls='tmux ls'
alias tmux="TERM=screen-256color-bce tmux"
alias v='vim'
export TERM='xterm-256color'

# use vi mode
export KEYTIMEOUT=1
bindkey -v
bindkey '^p' up-history
bindkey '^n' down-history
bindkey "^R" history-incremental-search-backward

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

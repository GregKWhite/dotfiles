#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# # Use rvm
rvm default

# RVM actually works, but I'm getting an annoying error message. This prevents that message from appearing.
rvm > /dev/null


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
alias rdm='zeus rake apartment:migrate or zeus rake db:migrate'
alias rdr='zeus rake apartment:rollback or zeus rake db:rollback'
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
alias gd='git diff ; echo "Use d!!"'
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
alias gs='git status ; echo "Use s!!"'
alias grd='git rebase -i develop'
alias l='git cl'
alias lg='git clg'
alias oif='open -a finder .'
alias md='git merge develop'
alias pctags="`brew --prefix`/bin/ctags -R --exclude=.git --exclude=log --exclude=tmp --exclude=public --exclude=db --exclude=node *"
alias pd='git pull'
alias pu='git push'
alias zc='zeus console'
alias zcs='zeus console --sandbox'
alias rc='rubocop -f clang'
alias rd='rubodiff'
alias rs='zeus test '
alias rsf='rspec -t "~all" spec/functional'
alias rsp='jruby --dev -S rspec'
alias s='git status'
alias sb='git save '
alias sf='source ~/.config/fish/config.fish'
alias tls='tmux ls'
alias t="env TERM=screen-256color-bce tmux"
alias te='teamocil --here edge'
alias tp='teamocil --here push'
alias tv='teamocil --here vim'
alias tu='teamocil uniticket'
alias v='vim'
alias vn='vim ~/Google\ Drive/notes.markdown'
alias vf='vim ~/.config/fish/config.fish ; source ~/.config/fish/config.fish'

# # use vi mode
# export KEYTIMEOUT=1
# bindkey -v
# bindkey '^p' up-history
# bindkey '^n' down-history
# bindkey "^R" history-incremental-search-backward
# bindkey "^S" history-incremental-search-forward

set -x TERM 'xterm-256color'
set -x PGDATA '/usr/local/var/postgres'
set -x EDITOR 'vim'

# Paths to your tackle
set tacklebox_path ~/.tackle ~/.tacklebox

# Theme
set tacklebox_theme entropy

# Load Tacklebox configuration
. ~/.tacklebox/tacklebox.fish

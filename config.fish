#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# # Use rvm
rvm default

# source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

abbr -a a='ls -Gfa'
abbr -a b='bundle'
abbr -a c='clear'
abbr -a cdd='cd ~/dotfiles'
abbr -a cds='cd ~/google\ drive/ucf/spring\ 2016'
abbr -a cdp='cd ~/railsapps/push'
abbr -a cde='cd ~/railsapps/edge'
abbr -a co='git checkout'
abbr -a cob='git checkout -b'
abbr -a cod='git checkout develop'
abbr -a d='git diff'
abbr -a dd='git diff develop'
abbr -a dc='git diff --cached'
abbr -a dp='git diff HEAD~1'
abbr -a rdm='rake db:migrate'
abbr -a rdr='rake db:rollback'
abbr -a rds='rake db:migrate:status'
abbr -a rdt='rake db:test:prepare'
abbr -a ectags="ctags -R --exclude=.git --exclude=log --exclude=public --exclude=tsv --exclude=db *"
abbr -a ga='git add .'
abbr -a gaf='git add'
abbr -a gc='git commit'
abbr -a gca='git commit --amend --reuse-message=HEAD'
abbr -a gcam='git commit --amend'
abbr -a gcm='git commit -m'
abbr -a gdd='git diff develop'
abbr -a gdu='git diff "@{u}"'
abbr -a gr='git reset'
abbr -a m='git merge'
abbr -a grh='git reset --hard HEAD'
abbr -a grs='git reset --soft HEAD~1'
abbr -a sl='git stash list'
abbr -a sps='git stash show -p stash@"{0}"'
abbr -a ss='git stash'
abbr -a sp='git stash pop'
abbr -a grd='git rebase -i develop'
abbr -a l='git cl'
abbr -a lg='git clg'
abbr -a oif='open -a finder .'
abbr -a md='git merge develop'
abbr -a pctags="`brew --prefix`/bin/ctags -R --exclude=.git --exclude=log --exclude=tmp --exclude=public --exclude=db --exclude=node *"
abbr -a pd='git pull'
abbr -a pu='git push'
abbr -a zc='rails console'
abbr -a cs='rails console --sandbox'
abbr -a rc='rubocop -f clang'
abbr -a rd='rubodiff'
abbr -a rs='rspec'
abbr -a rsf='rspec -t ~all'
abbr -a rsp='jruby --dev -S rspec'
abbr -a s='git status'
abbr -a sb='git save'
abbr -a sf='source ~/.config/fish/config.fish'
abbr -a tat='tmux attach -t'
abbr -a tns='tmux new-session -s'
abbr -a tls='tmux ls'
abbr -a t='tmux'
abbr -a te='teamocil --here edge'
abbr -a tp='teamocil --here push'
abbr -a tv='teamocil --here vim'
abbr -a v='vim'
abbr -a vn='vim ~/Google\ Drive/notes.markdown'
abbr -a vf='vim ~/.config/fish/config.fish ; source ~/.config/fish/config.fish'

set -x TERM 'xterm-256color'
set -x PGDATA '/usr/local/var/postgres'
set -x EDITOR 'vim'
# set -xg PATH '~/.rvm/bin' $PATH

# Paths to your tackle
set tacklebox_path ~/.tackle ~/.tacklebox

# Load Tacklebox configuration
. ~/.tacklebox/tacklebox.fish

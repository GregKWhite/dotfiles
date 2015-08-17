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

# source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh


# Customize to your needs...
alias gad='git a'
alias gcm='git commit -m'
alias gs='git status'
alias gl='git cl'
alias gd='git diff'
alias a='ls -Gfa'
alias please='sudo $(history -p !!)'
alias cds='cd ~/google\ drive/ucf/fall\ 2015'
alias c='clear'
alias tmux="TERM=screen-256color-bce tmux"
alias gca='git commit --amend --reuse-message=HEAD'
alias cdd='cd ~/dotfiles'
alias sz='source ~/.zshrc'
alias tls='tmux ls'
alias lr='lein repl'
alias le='lein exec'
alias oif='open -a finder .'

export TERM='xterm-256color'

# use vi mode
export KEYTIMEOUT=1
bindkey -v
bindkey '^p' up-history
bindkey '^n' down-history

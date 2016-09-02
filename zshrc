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
unsetopt share_history

# Customize to your needs...
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh_cache

zstyle ':completion:*' rehash true

# Colors for kill completion
zmodload zsh/complist
setopt extendedglob
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"

# Correction des commandes
# setopt correctall
alias fuck="sudo \`history -1 | awk '{ \$1=\"\"; print \$0 }'\`"


# source mpd client config
[ -f /etc/default/mpc ] && source /etc/default/mpc

# default editor
export EDITOR=vim
export VISUAL=vim

# Lua stuffs
#eval $(luarocks path --bin)

# Go stuffs
#export GOPATH=~/go
#export PATH=$PATH:~/go/bin

export PATH=/opt/android-sdk/platform-tools:$PATH

#source $(pew shell_config)
alias pew-activate='source $(pew shell_config)'

# python startup script
[ -f ~/.pythonstartup.py ] && export PYTHONSTARTUP=~/.pythonstartup.py


# added by travis gem
# [ -f /home/jc/.travis/travis.sh ] && source /home/jc/.travis/travis.sh

# fixes xterm transparency
[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" 0.75 >/dev/null

# uses less with colors and pygmentize
export LESS='-R'
[ -f ~/.lessfilter ] && export LESSOPEN='|~/.lessfilter %s'

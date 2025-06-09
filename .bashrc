####-- Shell Settings --####
shopt -s autocd
shopt -s checkwinsize  # check window size after each command
shopt -s globstar  # "**" pattern matches dirs/subdirs
export EDITOR=nvim

####-- Behaviour --####
set -o vi
cd() { builtin cd "$@" && ls -aF;}
bind 'set show-all-if-ambiguous on'

####-- TMUX compatible History --####
shopt -s histappend
HISTSIZE=HISTFILESIZE=2000
HISTCONTROL=ignoreboth
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

####-- Source other configs --####
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

####-- Shell Integrations --####
eval "$(fzf --bash)"

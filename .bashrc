####-- Source other configs --####
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

####-- Shell Settings --####
shopt -s autocd
shopt -s checkwinsize  # check window size after each command
shopt -s globstar  # "**" pattern matches dirs/subdirs
export EDITOR=nvim

####-- Behaviour --####
# set -o vi  # vim mode, default is emacs
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

####-- TMUX compatible History --####
shopt -s histappend
HISTSIZE=HISTFILESIZE=5000
HISTCONTROL=ignoreboth:erasedups
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"


####-- Prompt --####
RED="\[\033[31m\]"
GREEN="\[\033[32m\]"
YELLOW="\[\033[33m\]"
BLUE="\[\033[34m\]"
MAGENTA="\[\033[35m\]"
TURQ="\[\033[36m\]"
RESET="\[\033[0m\]"
LBL="\[\e[38;2;173;216;230m\]"

GIT_PS1_SHOWUPSTREAM="auto"     # < behind, > ahead, <> diverged, = sync
GIT_PS1_SHOWDIRTYSTATE=true     # * unstaged, + staged
GIT_PS1_SHOWSTASHSTATE=''       # $ stashes
GIT_PS1_SHOWUNTRACKEDFILES=true # % untracked
GIT_PS1_SHOWCOLORHINTS=true

PROMPT_DIRTRIM=2

PS1=""
# PS1+="\[\e[90m\]\A "
PS1+="${BLUE} \w"
PS1+="${TURQ}\$(__git_ps1 ' ( %s)')\n"
PS1+="\[\033[2;34m\]"
PS1+="${RESET} "

####-- Shell Integrations --####
source /etc/profile.d/bash_completion.sh
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

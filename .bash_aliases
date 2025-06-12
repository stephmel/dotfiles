####-- Builtins --####
alias ..='cd ..'
alias ll='ls -alF'
alias rm='rm -i'
alias dus='du -sh *'
alias s='ss -ltp'
alias c='clear'
alias path='tr "." "\n" <<< "$PATH"'
alias genv='printenv | grep -i'

####-- git --####
alias g='git'
alias gl='git log --oneline'
alias gs='git status -sb'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gd='git diff'

####-- Tooling --####
alias kc='kubectl'
alias tf='terraform'
alias nv='nvim'
# alias zed="WAYLAND_DISPLAY='' zed"

# Get OS software updates
alias update='sudo pacman -Suy; paru -Syyu'
alias pacman='pacman --color always'
alias paru='paru --color always'

# SSH
alias ssh="TERM=xterm-color ssh"

# Simple comands
alias ip="ip -c"
alias tree="tree -C"
alias t1="tree -L 1"
alias pbpaste="xclip -selection clipboard -o"
alias pbcopy="xclip -selection c"
alias diff="diff --color=auto"
alias grep="grep --color=auto"
alias xterm="alacritty"
alias vim="nvim"

# git aliases
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cd) %C(bold blue)<%an>%Creset' --abbrev-commit"

# kubectl aliases
alias kcontext="kubectx"
alias kctx="kubectx"
alias knamespace="kubens"
alias kns="kubens"

# Private aliases (DB connections, etc)
if [ -f ~/.dotfiles/alias/alias-private.sh ]; then
    source ~/.dotfiles/alias/alias-private.sh
fi

# tests
kgpbn() {
  kubectl get pods -A --field-selector=spec.nodeName=$1
}

# start work
start-work() {
  export WORK=true
}

stop-work() {
  unset WORK
}

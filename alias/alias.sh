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

# git aliases
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cd) %C(bold blue)<%an>%Creset' --abbrev-commit"

# kubectl aliases
alias kcontext="kubectx"
alias kctx="kubectx"
alias knamespace="kubens"
alias kns="kubens"

# bluecharm
alias rds-liverpool-qa="pgcli --host liverpool-qa-postgres.cprfqyhauqd0.us-east-1.rds.amazonaws.com --port 5432 --username liverpool --password --dbname liverpool --ssh-tunnel bluecharm-bastion-qa"
alias rds-liverpool-prod="pgcli --host liverpool-prod-postgres.cehsffbwqemh.ca-central-1.rds.amazonaws.com --port 5432 --username liverpool --password --dbname liverpool --ssh-tunnel bluecharm-bastion-prod"
alias rds-reports-qa="pgcli --host reports-qa-postgres.cprfqyhauqd0.us-east-1.rds.amazonaws.com --port 5432 --username report --password --dbname reports --ssh-tunnel bluecharm-bastion-qa"

# caju
alias db-caju-boba="pgcli --host lujpjqftvhhbpbfcreej.db.sa-east-1.nhost.run --port 5432 --username postgres --password --dbname lujpjqftvhhbpbfcreej"

# tmp
alias rds-test-prod="pgcli --host liverpool-prod-postgres.cehsffbwqemh.ca-central-1.rds.amazonaws.com --port 5432 --username liverpool --password --dbname liverpool"

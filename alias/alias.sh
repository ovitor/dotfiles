# Get OS software updates
alias update='sudo pacman -Suy; trizen -Syyu'

# Simple tree
alias tree="tree -C"
alias t1="tree -L 1"
alias pbpaste="xclip -selection clipboard -o"
alias pbcopy="xclip -selection c"

# feh
alias feh="feh -."

# internet
alias stop-home="sudo netctl stop home"
alias stop-wirelesshome="sudo netctl stop wirelesshome"
alias start-home="sudo netctl start home"
alias start-wirelesshome="sudo netctl start wirelesshomedhcp"

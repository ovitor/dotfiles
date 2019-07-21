# Get OS software updates
alias update='sudo pacman -Suy; trizen -Syyu'

# Simple tree
alias tree="tree -C"
alias t1="tree -L 1"
alias pbpaste="xclip -selection clipboard -o"
alias pbcopy="xclip -selection c"

# feh
alias feh="feh -."

# code
alias code-python="tmux new-session -s python \; send-keys 'vim .' C-m \; split-window -v -p 25 \; send-keys 'pipenv shell' C-m \; split-window -h -p 30 \; send-keys 'pipenv shell' C-m \; select-pane -t 0"

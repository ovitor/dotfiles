# Get OS software updates
alias update='sudo pacman -Suy; trizen -Syyu'

# Simple tree
alias tree="tree -C"
alias t1="tree -L 1"
alias pbpaste="xclip -selection clipboard -o"
alias pbcopy="xclip -selection c"

# other programs 
alias feh="feh -."
alias 3n="nnn"

# code
alias code-python="tmux new-session -s python \; send-keys 'vim .' C-m \; split-window -v -p 25 \; send-keys 'pipenv shell' C-m \; split-window -h -p 30 \; send-keys 'pipenv shell' C-m \; select-pane -t 0"

# record outputstream (needs configuration with pavucontrol)
alias record="ffmpeg -f pulse -ac 2 -i default -acodec libmp3lame"

# disable trackpoint - use while watch fullscreen video
alias disabletrack="xinput set-prop 17 'Device Enabled' 0"
alias enabletrack="xinput set-prop 17 'Device Enabled' 1"

# git aliases
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

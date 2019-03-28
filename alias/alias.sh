# Get OS software updates
alias update='sudo pacman -Suy; trizen -Syyu'

# Simple tree
alias tree="tree -C"
alias t1="tree -L 1"
alias pbpaste="xclip -selection clipboard -o"
alias pbcopy="xclip -selection c"

alias gcds="echo 'conectando a servidor: 200.17.33.66' && xfreerdp /u:'adproducao.ifce.edu.br\Administrator' /v:200.17.33.66"
alias academico="echo 'conectando a servidor: 200.17.33.148' && xfreerdp /u:'Administrator' /v:200.17.33.148"

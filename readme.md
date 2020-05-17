# dotfiles

my dotfiles for:

* zsh
* i3-gaps
* rofi
* alacritty
* vim
* tmux
* zathura

other miscellaneous are:

* desktop files for actions like lock reboot and shutdown (to by used by rofi)
* ntp config files
* git config files
* set env variables
* set alias commands

## using my dotfiles

```
$ git clone --recursive git@github.com:ovitor/dotfiles.git ~/.dotfiles
$ cd .dotfiles
$ ./install
```

To properly use vim-project plugin, you should populate a file like this
into `$HOME/.vim/projects.vim`.

```
"Project configuration"
"
set rtp+=~/.vim/plugged/vim-project/

call project#rc("~/projects")
  Project '~/.dotfiles', 'dotfiles'

"other projects
```

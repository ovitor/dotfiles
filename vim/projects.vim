"Project configuration"
"
set rtp+=~/.vim/plugged/vim-project/

call project#rc("~/projects")
  Project '~/.dotfiles', 'dotfiles'
  Project '~/ifce/projects', 'ifce'
  Project '~/amanari/projects', 'amanari'
  Project '~/hivelocity/projects/', 'hivelocity'

"other projects

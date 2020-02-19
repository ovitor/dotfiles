set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" code
Plugin 'johnsyweb/vim-makeshift'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'posva/vim-vue'
Plugin 'lervag/vimtex'
" completion
Plugin 'honza/vim-snippets'
" interface  
Plugin 'dracula/vim'
Plugin 'itchyny/lightline.vim'
Plugin 'hashivim/vim-terraform'
Plugin 'ryanoasis/vim-devicons'
" others
Plugin 'junegunn/fzf'
Plugin 'amiorin/vim-project'

" PHP stuff
Plugin 'shawncplus/phpcomplete.vim'

call vundle#end()
filetype plugin indent on

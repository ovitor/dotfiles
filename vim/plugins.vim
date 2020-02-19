"NERDTree configuration"
"let NERDTreeIgnore=['\.aux$', '\.bbl$', '\.blg$', '\.brf$', '\.fls$', '\.idx', '\.pyc']
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
"autocmd VimEnter * if argc() == 1 | NERDTree | wincmd p | endif

"NERDTreeTabs configuration"
"map ff :NERDTreeTabsToggle<CR>
"let NERDTreeShowHidden=1
"
"PHPcomplete-extended
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

"Makeshift configuration"
let g:makeshift_chdir = 1

"Neocomplete configuration"
let g:vimtex_compiler_latexmk = {'callback' : 0}

"Markdown preview configuration"
let vim_markdown_preview_github=0
let vim_markdown_preview_browser='Firefox'

"Terraform plugin
let g:terraform_align=1

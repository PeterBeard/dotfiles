execute pathogen#infect()
filetype plugin indent on

set number " line numbering
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab " use spaces, not tabs
set textwidth=80
set fo=cq

syntax enable   " syntax processing
set showmatch   " show matching brackets, parens, etc.

set background=dark
colorscheme hybrid_reverse

" Set up syntastic (https://github.com/scrooloose/syntastic)
set statusline+=%#warningmsg#\ \ \ POS=%l,\ %c
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" YouCompleteMe configuration (https://github.com/Valloric/YouCompleteMe/)
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" Mappings for cycling through errors/warnings
map <F4> :lnext<CR>
map <F3> :lprev<CR>

" See :help guioptions for definitions
if has('gui_running')
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=b

    set guifont=Source\ Code\ Pro\ Medium\ 13
endif

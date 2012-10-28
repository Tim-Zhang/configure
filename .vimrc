set   nocp
set   nu
imap  jj    <Esc> 
set   hls
set   ic
set   is
syntax   on
set   backspace=indent,eol,start
set   whichwrap=b,s,h,l,<,>,[,]
set   encoding=utf-8
"set   cin
set   smarttab
set   sw=3
set   ts=3
set   tw=80
set   lbr
set   et
set   list
set listchars=tab:▸\ ,eol:¬
let mapleader=","


set autoindent
set smartindent

au BufNewFile,BufRead *.py,*.pyw setf python

colo  ron

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set filetype=on
set filetype=python
filetype indent on
autocmd FileType python setlocal et sta sw=4 sts=4

filetype plugin on
"set ofu=syntaxcomplete#Complete
"autocmd FileType python　set omnifunc=pythoncomplete#Complete
"autocmd FileType python runtime! autoload/pythoncomplete.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""EasyMotion
let g:EasyMotion_leader_key = '<Leader>'

"" taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1

""nerd tree
map <F7> :NERDTreeToggle<CR>
map <F7> :NERDTreeToggle<CR>
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>

""Indent Guides 
let g:indent_guides_auto_colors=0
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

""pathogen
call pathogen#infect()

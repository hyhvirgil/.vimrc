
source ~/.vim/vim-init/init.vim

"inoremap ( ()<Left>
"inoremap () ()
"inoremap (<Esc> (<Esc>
"inoremap [ []<Left>
"inoremap [] []
"inoremap [<Esc> [<Esc>
"inoremap { {}<Left>
"inoremap {} {}
"inoremap {<Esc> {<Esc>
inoremap {<CR> {}<Left><CR><Esc>O

set showmode 
set number
cabbrev E Explore
set tags=tags;/
noremap <C-k><C-b> :NERDTreeToggle<cr>
nnoremap <F11> :!ctags -R<cr>
set cmdheight=2
set wrap	" 自动折行 

noremap <m-,> <c-w><
inoremap <m-,> <esc><c-w><
noremap <m-.> <c-w>>
inoremap <m-.> <esc><c-w>>

" F2 搜索字符串并在 Quickfix 中显示
"nnoremap <silent> <F2> :AsyncRun -cwd=<root> grep -n -R <cword> . <cr>

"let g:cwd = getcwd()
"echom "cwd:" . g:cwd
"let g:f2p = getcwd() . '/casualgame/battle/'

function! ResetF2p()
    let g:f2p = getcwd() . '/casualgame/battle/'
endfunc

call ResetF2p()
nnoremap <silent> <F2> :call F2Func('<cword> ') <cr>

function! F2Func(str)
    "echom 'AsyncRun grep -n -R ' . a:str . ' ' . g:f2p
    "-cwd=<root>
    exec 'AsyncRun grep -n -R ' . a:str . ' ' . g:f2p
endfunc


"[vim2017] vim plugin manage:vundle 
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" All of your Plugins must be added before the following line
Plugin 'fatih/vim-go'
Plugin 'fatih/molokai'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Blackrush/vim-gocode'
Plugin 'majutsushi/tagbar'
Plugin 'wincent/command-t'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'othree/xml.vim'
Plugin 'yianwillis/vimcdoc'
Plugin 'scrooloose/nerdtree'
call vundle#end()            " required
filetype plugin indent on    " required
"[vic2016] vim golang setting
"au BufWritePost *.go :GoImports "文件写入时自动倒入包
let g:go_fmt_command = "goimports"
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>
nmap ct  :CommandT<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
"[vic2016] vim personal setting
"vim 自身修改
syntax on
set number  "show line
set autoindent 
set ts=4 
set clipboard=unnamed
set hlsearch
set fileformat=mac
set ignorecase
"插件设置
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1
"自己添加的函数
"vim i++
"let I=16 | g/\(_\)17/s//\=Inc(1)/ 替换相同数字为递增数字
let g:I=0
function! Inc(increment)
	let g:I =g:I + a:increment
	return g:I
endfunction

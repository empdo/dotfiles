call plug#begin('~/.vim/plugged')
	Plug 'rafi/awesome-vim-colorschemes'
	Plug 'neoclide/coc.nvim'
	Plug 'tpope/vim-surround'
	Plug 'tmsvg/pear-tree'
	Plug 'preservim/nerdtree'
	Plug 'itchyny/lightline.vim'
	Plug 'itchyny/vim-gitbranch'
	Plug 'OmniSharp/omnisharp-vim'
	Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
	Plug 'junegunn/fzf.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'ThePrimeagen/vim-be-good'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
    Plug 'gabrielelana/vim-markdown'
    Plug 'lambdalisue/glyph-palette.vim'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
set noruler
let g:deoplete#enable_at_startup = 1
call plug#end()

set termguicolors

source $HOME/.config/nvim/plug-config/signify.vim
luafile  $HOME/.config/nvim/lua/plug-colorizer.lua

let g:coc_global_extensions = ['coc-prettier', 'coc-tsserver', 'coc-sh', 'coc-pyright', 'coc-json', 'coc-html', 'coc-css', 'coc-cmake', 'coc-clangd', 'coc-emmet', 'coc-clangd']

let g:RelativeNumbTermm=0
let g:Term=0

colorscheme deep-space
highlight LineNr ctermfg=grey ctermbg=NONE
highlight Normal guibg=NONE ctermbg=NONE


let mapleader="\<Space>"
set hidden
set encoding=utf8
set autoindent
set rnu
set nowrap
set noruler
set nohlsearch
set incsearch
set hidden
"set ruler "show cursur att al time
set number
set clipboard=unnamedplus "cp in and out
set mouse-=a
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set scrolloff=8
set guicursor=

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'helloworld','gitbranch' ] ]
      \ },
      \ 'component_function': {
      \	    'gitbranch': 'gitbranch#name'
      \ },
      \ }
      
"Random stuff
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
command Wq :execute ':silent w !sudo tee % > /dev/null' | :edit! | :q

"switch beetwen buffers
nnoremap <TAB> :tabnext<CR>
nnoremap <S-TAB> :tabprevious<CR>

"FZF"
map <leader>f <Esc><Esc>:Files<CR>
inoremap <leader>f <Esc><Esc>:BLines<CR>
map <leader>g <Esc><Esc>:BCommits<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }


let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_history_dir = '~/.local/share/fzf-history'

"tabing
vnoremap < <gv
vnoremap > >gv

nmap <c-T> :call GetTerm()<cr>
nmap <c-R> :call ToggleRelativeNumbers()<cr>

function! ToggleRelativeNumbers()
    if g:RelativeNumbers
		let g:RelativeNumbers=0
	ke this	:set nornu
    else
        let g:RelativeNumbers=1
        :set rnu
    endif
endfunction

function! GetTerm()
    if g:Term
		let g:term=0

    else
        let g:term=1
	below 7sp
	set norulerterminal
	NERDTree
    endif
endfunction

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

nnoremap <A-down> :m .+1<CR>==
nnoremap <A-up> :m .-2<CR>==
inoremap <A-down> <Esc>:m .+1<CR>==gi
inoremap <A-up> <Esc>:m .-2<CR>==gi
vnoremap <A-down> :m '>+1<CR>gv=gv
vnoremap <A-up> :m '<-2<CR>gv=gv

":CocInstall coc-explorer  
nmap <C-e> :NERDTree<CR>

"CocPrettier
"nmap <C-f> :CocCommand prettier.formatFile<CR>-

"Fugitive
nmap <leader>gh  :GBrowse<CR>
nmap <leader>G  :SignifyToggle<CR>

nmap <C-s> :MarkdownPreview<CR>
nmap <C-p> :MarkdownPreviewStop<CR>


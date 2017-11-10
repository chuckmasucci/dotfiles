" Config
set ignorecase
set smartcase
set shiftwidth=4
set expandtab
set encoding=utf8
"set guifont=Fira\ Mono\ for\ Powerline:h16
set guifont=Source\ Code\ Pro\ for\ Powerline:h16
set tags=tags
set tabstop=4
set termguicolors
filetype plugin indent on
filetype plugin on
colorscheme base16-material-darker

" Scripts
" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

" Macros
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" vim-plug
call plug#begin('~/.config/nvim/plugged')

" Base16 colorschemes
Plug 'chriskempson/base16-vim'

" CLang syntax hightlighting
Plug 'arakashic/chromatica.nvim'
let g:chromatica#libclang_path='/usr/lib/llvm-4.0/lib/libclang.so'
let g:chromatica#highlight_feature_level=1
let g:chromatica#responsive_mode=1

" Completion manager
Plug 'roxma/nvim-completion-manager'

" Clang completion
Plug 'roxma/ncm-clang'

" Linter
Plug 'w0rp/ale'

" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Line Numbers
Plug 'myusuf3/numbers.vim'

" VIM Airline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='papercolor'
let g:airline_powerline_fonts = 1

" Ctrl P
Plug 'ctrlpvim/ctrlp.vim'
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>f :CtrlPMRUFiles<CR>

" Git Fugitive
Plug 'tpope/vim-fugitive'

" GitGutter
Plug 'airblade/vim-gitgutter'

" PHPactor
Plug 'phpactor/phpactor' ,  {'do': 'composer install'}
Plug 'roxma/ncm-phpactor'

" PHP namespace
Plug 'arnaud-lb/vim-php-namespace'
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

" Autotag vim
Plug 'craigemery/vim-autotag'
let g:autotagTagsFile="tags"

" taglist.vim
Plug 'vim-scripts/taglist.vim'

" NERD Commenter
Plug 'scrooloose/nerdcommenter'

" Tagbar
Plug 'majutsushi/tagbar'
Plug 'vim-php/tagbar-phpctags.vim'
let g:tagbar_phpctags_bin='/usr/local/bin/phpctags'
let g:tagbar_left=1
noremap <M-7> :TagbarToggle<CR>

" Buf tab line
Plug 'ap/vim-buftabline'
let g:buftabline_indicators='on'
let g:buftabline_separators='on'
nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>9 <Plug>BufTabLine.Go(9)
nmap <leader>0 <Plug>BufTabLine.Go(10)

" DevIcons
Plug 'ryanoasis/vim-devicons'

call plug#end()

" My settings
nnoremap <F3> :NumbersToggle<CR>
nnoremap \\ :noh<return>

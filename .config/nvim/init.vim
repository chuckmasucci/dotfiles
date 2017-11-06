" Config
set ignorecase
set smartcase

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

set encoding=utf8
set guifont=Ubuntu\ Mono\ Nerd\ Font\ Complete

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

" Terminal
set termguicolors
"colorscheme Tomorrow-Night-Blue
colorscheme base16-apathy

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

" Ctrl P
Plug 'ctrlpvim/ctrlp.vim'

" Git Fugitive
Plug 'tpope/vim-fugitive'

" GitGutter
Plug 'airblade/vim-gitgutter'

" PHPactor
Plug 'phpactor/phpactor' ,  {'do': 'composer install'}
Plug 'roxma/ncm-phpactor'

" PHP Language Server
"Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
"Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}

" DevIcons
Plug 'ryanoasis/vim-devicons'


call plug#end()

" Chromatica settings
let g:chromatica#libclang_path='/usr/lib/llvm-4.0/lib/libclang.so'
let g:chromatica#highlight_feature_level=1
let g:chromatica#responsive_mode=1

" Ctrl P settings
" Open file menu
nnoremap <Leader>o :CtrlP<CR>
" Open buffer menu
nnoremap <Leader>b :CtrlPBuffer<CR>
" Open most recently used files
nnoremap <Leader>f :CtrlPMRUFiles<CR>

" Airline settings
let g:airline_theme='papercolor'
let g:airline_powerline_fonts = 1

" PHP Language Server settings
"autocmd FileType php LanguageClientStart




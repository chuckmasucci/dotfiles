set ignorecase
set smartcase
set shiftwidth=4
set expandtab
set encoding=utf8
set guifont=SauceCodePro\ Nerd\ Font\ Mono
set tags=tags
set tabstop=4
set hidden
set nowrap
set formatoptions-=t
set background=dark
set history=1000
"set shortmess+=I
"set cpoptions+=$
set showcmd
filetype plugin indent on

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

" vim-plug
call plug#begin('~/.config/nvim/plugged')
let base16colorspace=256  " Access colors present in 256 colorspace

" Base16 colorschemes
Plug 'chriskempson/base16-vim'

" Side search using ag
Plug 'ddrscott/vim-side-search'
" How should we execute the search?
" --heading and --stats are required!
let g:side_search_prg = 'ag --word-regexp'
  \. " --ignore='*.js.map'"
  \. " --ignore='global.php'"
  \. " --heading --stats -B 1 -A 4"

" Can use `vnew` or `new`
let g:side_search_splitter = 'vnew'

" I like 40% splits, change it if you don't
let g:side_search_split_pct = 0.4

nnoremap <Leader>s :SideSearch <C-r><C-w><CR> | wincmd p

" CLang syntax hightlighting
Plug 'arakashic/chromatica.nvim'
let g:chromatica#libclang_path='/usr/lib/llvm-4.0/lib/libclang.so'
let g:chromatica#highlight_feature_level=1
let g:chromatica#responsive_mode=1
let g:chromatica#enable_at_startup=1

" Vim polygot
"Plug 'sheerun/vim-polyglot'
"Plug 'vim-jp/vim-cpp'

" Completion manager
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/ncm-clang'
let g:UltiSnipsExpandTrigger = "<Plug>(ultisnips_expand)"
inoremap <silent> <c-u> <c-r>=cm#sources#ultisnips#trigger_or_popup("\<Plug>(ultisnips_expand)")<cr>
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
"imap <expr> <CR>  (pumvisible() ?  "\<c-y>\<Plug>(expand_or_nl)" : "\<CR>")
"imap <expr> <Plug>(expand_or_nl) (cm#completed_is_snippet() ? "\<C-U>":"\<CR>")
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Gen tags
Plug 'jsfaint/gen_tags.vim'

" Linter
Plug 'w0rp/ale'
let g:ale_linters = {
    \   'c': ['gcc'],
    \}
"autocmd BufEnter *.c,*.h let g:ale_c_clang_options = join(ncm_clang#compilation_info()['args'], ' ')
let g:ale_set_signs = 1
"let g:ale_set_balloons = 1
let g:ale_set_highlights = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_c_clang_options = '-Ilibs'

" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
map <F2> :NERDTreeToggle<CR>

" Line Numbers
Plug 'myusuf3/numbers.vim'

" VIM Airline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 0
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

let g:airline#extensions#tabline#buffer_idx_format = {
        \ '0': '0 ',
        \ '1': '1 ',
        \ '2': '2 ',
        \ '3': '3 ',
        \ '4': '4 ',
        \ '5': '5 ',
        \ '6': '6 ',
        \ '7': '7 ',
        \ '8': '8 ',
        \ '9': '9 '
        \}

" Ctrl P
Plug 'ctrlpvim/ctrlp.vim'
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>f :CtrlPMRUFiles<CR>

" Git Fugitive
Plug 'tpope/vim-fugitive'

" GitGutter
Plug 'airblade/vim-gitgutter'

" Ulti snips
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Autotag vim
"Plug 'craigemery/vim-autotag'
"let g:autotagTagsFile="tags"

" NERD Commenter
Plug 'scrooloose/nerdcommenter'

" Gutentag
"Plug 'ludovicchabant/vim-gutentags'
"let g:gutentags_cache_dir = '~/.vim/gutentags'

" Tagbar
Plug 'majutsushi/tagbar'
"Plug 'vim-php/tagbar-phpctags.vim'
let g:tagbar_left=1
noremap <M-7> :TagbarToggle<CR>

" Supertab
"Plug 'ervandew/supertab'

" Search Complete
Plug 'vim-scripts/SearchComplete'

" Tmux line
Plug 'edkolev/tmuxline.vim'

function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release
    else
      !cargo build --release --no-default-features --features json-rpc
    endif
  endif
endfunction

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }
let g:markdown_composer_syntax_theme = 'rainbow'

" Tabular
Plug 'godlygeek/tabular'

" DevIcons
Plug 'ryanoasis/vim-devicons'

" Func param
"Plug 'vim-scripts/AutoComplPop'

call plug#end()

" My settings
set mouse=a
nnoremap <F3> :NumbersToggle<CR>
nnoremap \\ :noh<CR>
nnoremap p ]p
nnoremap \w :w<CR>
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
autocmd TextChanged,TextChangedI <buffer> silent write
map <leader>v "+gP
map <leader>c "+y
"nnoremap ; :
exec 'set viminfo=%,' . &viminfo

set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
      \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
      \,sm:block-blinkwait175-blinkoff150-blinkon175

" My mappings
noremap - dd
noremap <leader>ss :source ~/.config/nvim/init.vim<CR>
vmap <Tab> >gv
vmap <S-Tab> <gv
nnoremap <C-J> m`o<Esc>``
nnoremap <C-K> m`O<Esc>``
nnoremap <C-W> :bd<CR>
nnoremap <C-Q> :q<CR>
nnoremap Y y$
colorscheme base16-tomorrow-night

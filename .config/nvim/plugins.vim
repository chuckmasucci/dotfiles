" vim-plug
call plug#begin('~/.config/nvim/plugged')


"██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗
"██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝
"██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗
"██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║
"██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║
"╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝
                                                       
" ═════════════════════════════════════════════════════════════════
"   Base16 Vim
"   https://github.com/chriskempson/base16-vim
" ═════════════════════════════════════════════════════════════════
Plug 'chriskempson/base16-vim'

" ═════════════════════════════════════════════════════════════════
"   vim-side-search - Search context in Vim in a sidebar using `ag` output
"   https://github.com/ddrscott/vim-side-search
" ═════════════════════════════════════════════════════════════════
Plug 'ddrscott/vim-side-search'
let g:side_search_prg = 'ag --word-regexp'
  \. " --ignore='*.js.map'"
  \. " --ignore='global.php'"
  \. " --heading --stats -B 1 -A 4"

let g:side_search_splitter = 'vnew'
let g:side_search_split_pct = 0.4
nnoremap <Leader>s :SideSearch <C-r><C-w><CR> | wincmd p

" ═════════════════════════════════════════════════════════════════
"   A Completion Framework for Neovim
"   https://github.com/roxma/nvim-completion-manager
" ═════════════════════════════════════════════════════════════════
Plug 'roxma/nvim-completion-manager'
let g:UltiSnipsExpandTrigger = "<Plug>(ultisnips_expand)"
inoremap <silent> <c-u> <c-r>=cm#sources#ultisnips#trigger_or_popup("\<Plug>(ultisnips_expand)")<cr>
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"

" ═════════════════════════════════════════════════════════════════
"   Vim-Tags - Ctags generator for Vim
"   https://github.com/szw/vim-tags
" ═════════════════════════════════════════════════════════════════
Plug 'jsfaint/gen_tags.vim'

" ═════════════════════════════════════════════════════════════════
"   ALE (Asynchronous Lint Engine) - plugin for providing linting in NeoVim and Vim 8 while you edit your text files.
"   https://github.com/w0rp/ale
" ═════════════════════════════════════════════════════════════════
Plug 'w0rp/ale'
let g:ale_linters = {
    \   'c': ['gcc'],
    \   'javascript': ['eslint']
    \}
let g:ale_set_signs = 1
let g:ale_set_highlights = 1
let g:airline#extensions#ale#enabled = 1

" ═════════════════════════════════════════════════════════════════
"   The NERDTree - tree explorer plugin
"   https://github.com/scrooloose/nerdtree
" ═════════════════════════════════════════════════════════════════
Plug 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

" ═════════════════════════════════════════════════════════════════
"   nerdtree-git-plugin - A plugin of NERDTree showing git status
"   https://github.com/Xuyuanp/nerdtree-git-plugin
" ═════════════════════════════════════════════════════════════════
Plug 'Xuyuanp/nerdtree-git-plugin'

" ═════════════════════════════════════════════════════════════════
"   vim-nerdtree-syntax-highlight - Extra syntax and highlight for nerdtree files
"   https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
" ═════════════════════════════════════════════════════════════════
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" ═════════════════════════════════════════════════════════════════
"   numbers.vim - plugin for better line numbers 
"   https://github.com/myusuf3/numbers.vim
" ═════════════════════════════════════════════════════════════════
Plug 'myusuf3/numbers.vim'

" ═════════════════════════════════════════════════════════════════
"   vim-airline - lean & mean status/tabline for vim that's light as air
"   https://github.com/vim-airline/vim-airline
" ═════════════════════════════════════════════════════════════════
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 0
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = ' '
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = ' '
nmap <leader>1 <Plug>AirlineSelectTab1
map <leader>2 <Plug>AirlineSelectTab2
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

" ═════════════════════════════════════════════════════════════════
"   ctrlp.vim - Full path fuzzy file, buffer, mru, tag, ...
"   https://github.com/ctrlpvim/ctrlp.vim
" ═════════════════════════════════════════════════════════════════
Plug 'ctrlpvim/ctrlp.vim'
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>f :CtrlPMRUFiles<CR>

" ═════════════════════════════════════════════════════════════════
"   fugitive.vim - a Git wrapper so awesome, it should be illegal 
"   https://github.com/tpope/vim-fugitive
" ═════════════════════════════════════════════════════════════════
Plug 'tpope/vim-fugitive'

" ═════════════════════════════════════════════════════════════════
"   vim-gitgutter - shows a git diff in the 'gutter' (sign column)
"   https://github.com/airblade/vim-gitgutter
" ═════════════════════════════════════════════════════════════════
Plug 'airblade/vim-gitgutter'

" ═════════════════════════════════════════════════════════════════
"   UltiSnips - the ultimate solution for snippets in Vim
"   https://github.com/SirVer/ultisnips
" ═════════════════════════════════════════════════════════════════
Plug 'SirVer/ultisnips'

" ═════════════════════════════════════════════════════════════════
"   snipMate & UltiSnip Snippets - vim-snipmate default snippets (Previously snipmate-snippets)
"   https://github.com/honza/vim-snippets
" ═════════════════════════════════════════════════════════════════
Plug 'honza/vim-snippets'

" ═════════════════════════════════════════════════════════════════
"   NERD Commenter - Vim plugin for intensely orgasmic commenting
"   https://github.com/scrooloose/nerdcommenter
" ═════════════════════════════════════════════════════════════════
Plug 'scrooloose/nerdcommenter'

" ═════════════════════════════════════════════════════════════════
"   Tagbar - Vim plugin that displays tags in a window, ordered by scope
"   https://github.com/majutsushi/tagbar
" ═════════════════════════════════════════════════════════════════
Plug 'majutsushi/tagbar'
let g:tagbar_left=1
noremap <M-7> :TagbarToggle<CR>

" ═════════════════════════════════════════════════════════════════
"   SearchComplete - Tab completion of words inside of a search ('/')
"   https://github.com/vim-scripts/SearchComplete
" ═════════════════════════════════════════════════════════════════
Plug 'vim-scripts/SearchComplete'

" ═════════════════════════════════════════════════════════════════
"   vim-markdown-composer - An asynchronous markdown preview plugin for Vim and Neovim
"   https://github.com/euclio/vim-markdown-composer
" ═════════════════════════════════════════════════════════════════
Plug 'euclio/vim-markdown-composer'
let g:markdown_composer_syntax_theme = 'rainbow'

" ═════════════════════════════════════════════════════════════════
"   Tabular - Vim script for text filtering and alignment
"   https://github.com/godlygeek/tabular
" ═════════════════════════════════════════════════════════════════
Plug 'godlygeek/tabular'

" ═════════════════════════════════════════════════════════════════
"   VimDevIcons - Add Icons to Your Plugins
"   https://github.com/ryanoasis/vim-devicons
" ═════════════════════════════════════════════════════════════════
Plug 'ryanoasis/vim-devicons'

" ═════════════════════════════════════════════════════════════════
"   place.vim - allows you to add insertions to your text without moving your cursor.
"   https://github.com/joereynolds/place.vim
" ═════════════════════════════════════════════════════════════════
Plug 'joereynolds/place.vim'
nmap ga <Plug>(place-insert)
nmap gb <Plug>(place-insert-multiple)


" ██████╗
"██╔════╝
"██║     
"██║     
"╚██████╗
" ╚═════╝

" ═════════════════════════════════════════════════════════════════
"   Chromatica.nvim - Clang based syntax highlighting for Neovim
"   https://github.com/arakashic/chromatica.nvim
" ═════════════════════════════════════════════════════════════════
Plug 'arakashic/chromatica.nvim', { 'on': [], 'for': 'c', 'do': ':UpdateRemotePlugins' }

" ═════════════════════════════════════════════════════════════════
"   Conque GDB - GDB command line interface and terminal emulator in (G)Vim
"   https://github.com/vim-scripts/Conque-GDB
" ═════════════════════════════════════════════════════════════════
Plug 'vim-scripts/Conque-GDB', { 'on': [], 'for': 'c' }

" ═════════════════════════════════════════════════════════════════
"   ncm-clang - clang completion for nvim-completion-manager
"   https://github.com/roxma/ncm-clang
" ═════════════════════════════════════════════════════════════════
Plug 'roxma/ncm-clang', { 'on': [], 'for': 'c' }



"     ██╗ █████╗ ██╗   ██╗ █████╗ ███████╗ ██████╗██████╗ ██╗██████╗ ████████╗
"     ██║██╔══██╗██║   ██║██╔══██╗██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝
"     ██║███████║██║   ██║███████║███████╗██║     ██████╔╝██║██████╔╝   ██║   
"██   ██║██╔══██║╚██╗ ██╔╝██╔══██║╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   
"╚█████╔╝██║  ██║ ╚████╔╝ ██║  ██║███████║╚██████╗██║  ██║██║██║        ██║   
" ╚════╝ ╚═╝  ╚═╝  ╚═══╝  ╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   

" ═════════════════════════════════════════════════════════════════
"   YAJS: Yet Another JavaScript Syntax - syntax highlighting
"   https://github.com/othree/yajs.vim
" ═════════════════════════════════════════════════════════════════
Plug 'othree/yajs.vim', { 'on': [], 'for': 'js' }

" ═════════════════════════════════════════════════════════════════
"   Vim JavaScript Context Coloring - syntax highlighting
"   https://github.com/bigfish/vim-js-context-coloring
" ═════════════════════════════════════════════════════════════════
Plug 'bigfish/vim-js-context-coloring', { 'on': [], 'for': 'js' }

" ═════════════════════════════════════════════════════════════════
"   vim-jsx - Syntax highlighting and indenting for JSX
"   https://github.com/mxw/vim-jsx
" ═════════════════════════════════════════════════════════════════
Plug 'mxw/vim-jsx', { 'on': [], 'for': 'js' }

" ═════════════════════════════════════════════════════════════════
"   Better JSON for VIM - Distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing.
"   https://github.com/elzr/vim-json
" ═════════════════════════════════════════════════════════════════
Plug 'elzr/vim-json', { 'on': [], 'for': 'js' }

" ═════════════════════════════════════════════════════════════════
"   jsdoc.vim - generates JSDoc block comments based on a function signature.
"   https://github.com/heavenshell/vim-jsdoc
" ═════════════════════════════════════════════════════════════════
Plug 'heavenshell/vim-jsdoc', { 'on': [], 'for': 'js' }

" ═════════════════════════════════════════════════════════════════
"   javascript-libraries-syntax.vim - Syntax file for JavaScript libraries.
"   https://github.com/othree/javascript-libraries-syntax.vim
" ═════════════════════════════════════════════════════════════════
Plug 'othree/javascript-libraries-syntax.vim', { 'on': [], 'for': 'js' }

" ═════════════════════════════════════════════════════════════════
"   JavaScript Parameter Complete - JavaScript Parameter Complete(JSPC) is a completion function for function parameters, such as event names, crypto algorithms, and common locales.
"   https://github.com/othree/jspc.vim
" ═════════════════════════════════════════════════════════════════
Plug 'othree/jspc.vim', { 'on': [], 'for': 'js' }

call plug#end()


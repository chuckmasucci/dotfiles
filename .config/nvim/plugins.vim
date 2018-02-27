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
nnoremap <Leader>ss :SideSearch <C-r><C-w><CR> | wincmd p

" ═════════════════════════════════════════════════════════════════
"   A Completion Framework for Neovim
"   https://github.com/roxma/nvim-completion-manager
" ═════════════════════════════════════════════════════════════════
"Plug 'roxma/nvim-completion-manager'
"let g:UltiSnipsExpandTrigger = "<Plug>(ultisnips_expand)"
"inoremap <silent> <c-u> <c-r>=cm#sources#ultisnips#trigger_or_popup("\<Plug>(ultisnips_expand)")<cr>
"let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
"let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"

" ═════════════════════════════════════════════════════════════════
"   Vim-Tags - Ctags generator for Vim
"   https://github.com/szw/vim-tags
" ═════════════════════════════════════════════════════════════════
Plug 'jsfaint/gen_tags.vim'
let g:gen_tags#gtags_auto_gen = 1

" ═════════════════════════════════════════════════════════════════
"   ALE (Asynchronous Lint Engine) - plugin for providing linting in NeoVim and Vim 8 while you edit your text files.
"   https://github.com/w0rp/ale
" ═════════════════════════════════════════════════════════════════
Plug 'w0rp/ale'
let g:ale_linters = {
    \   'c': ['gcc'],
    \   'javascript': ['eslint'],
    \   'typescript': ['tslint'],
    \   'sass': ['sass-lint'],
    \   'scss': ['sass-lint']
    \}
let g:ale_set_signs = 1
let g:ale_set_highlights = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_typescript_tslint_config_path = '~/.local/share/linters/'

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
let g:airline#extensions#tabline#formatter = 'tsformatter'
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
nmap <leader>1 <Plug>AirlineSelectTab1 zz
map <leader>2 <Plug>AirlineSelectTab2 zz
nmap <leader>3 <Plug>AirlineSelectTab3 zz
nmap <leader>4 <Plug>AirlineSelectTab4 zz
nmap <leader>5 <Plug>AirlineSelectTab5 zz
nmap <leader>6 <Plug>AirlineSelectTab6 zz
nmap <leader>7 <Plug>AirlineSelectTab7 zz
nmap <leader>8 <Plug>AirlineSelectTab8 zz
nmap <leader>9 <Plug>AirlineSelectTab9 zz
nmap <leader>- <Plug>AirlineSelectPrevTab zz
nmap <leader>+ <Plug>AirlineSelectNextTab zz

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
"nnoremap <Leader>o :CtrlP<CR>
"nnoremap <Leader>b :CtrlPBuffer<CR>
"nnoremap <Leader>f :CtrlPMRUFiles<CR>

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
""let g:markdown_composer_syntax_theme = 'tomorrow-night-eighties'

" ═════════════════════════════════════════════════════════════════
"   livedown.vim - Vim plugin for Livedown
"   https://github.com/shime/vim-livedown
" ═════════════════════════════════════════════════════════════════
"Plug 'shime/vim-livedown'

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

" ═════════════════════════════════════════════════════════════════
"   vim-snipe - Targeted linewise motions and edits in Vim
"   https://github.com/yangmillstheory/vim-snipe
" ═════════════════════════════════════════════════════════════════
"Plug 'yangmillstheory/vim-snipe'

Plug 'easymotion/vim-easymotion/'
"map <Leader> <Plug>(easymotion-prefix)
"nmap s <Plug>(easymotion-s)

function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzyword#converter()],
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())

Plug 'mhinz/vim-startify'
let g:startify_custom_header = [
            \ '   ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
            \ '   ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
            \ '   ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
            \ '   ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
            \ '   ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
            \ '   ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
            \ ]
                                                  

Plug 'othree/eregex.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzy#converter()],
  \   'modules': [incsearch#config#easymotion#module()],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())

"Plug 'Shougo/denite.nvim'

Plug 'Raimondi/delimitMate'

Plug 'tpope/vim-surround'

Plug 'kshenoy/vim-signature'

Plug 'Yggdroot/indentLine'
let g:indentLine_char = '┆'

"Plug 'vim-scripts/Greplace.vim'
Plug 'dkprice/vim-easygrep'
let g:EasyGrepFilesToExclude=".svn,.git,*.o"
let g:EasyGrepReplaceWindowMode=2

"Plug 'vim-scripts/AutoComplPop'

Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

Plug 'prettier/vim-prettier', { 'do': 'npm install' }
"let g:prettier#config#tab_width = 4
"let g:prettier#config#use_tabs = 'false'
let g:prettier#config#tab_width = 2
let g:prettier#config#single_quote = 'true'

Plug 'tpope/vim-eunuch'

Plug 'embear/vim-localvimrc'






" ██████╗
"██╔════╝
"██║     
"██║     
"╚██████╗
" ╚═════╝

" ═════════════════════════════════════════════════════════════════
"   c.vim https://github.com/vim-scripts/c.vim 
"   https://github.com/vim-scripts/c.vim
" ═════════════════════════════════════════════════════════════════
Plug 'vim-scripts/c.vim'

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
"Plug 'roxma/ncm-clang', { 'on': [], 'for': 'c' }

Plug 'Valloric/YouCompleteMe', { 'do': 'cmake' }
"Plug 'ervandew/supertab'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Typescript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'



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
Plug 'maxmellon/vim-jsx-pretty'

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
Plug 'elzr/vim-json'
set conceallevel=0
let g:vim_json_syntax_conceal = 0
augroup jsonshow
  au!
  au FileType json set conceallevel=2
  au FileType json let g:json_conceal="adgms"
  au FileType json hi Conceal guibg=White guifg=DarkMagenta
augroup END

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

Plug 'ternjs/tern_for_vim'
let g:tern_show_argument_hints='on_hold'
let g:tern_map_keys=1

" CSS
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'shmargum/vim-sass-colors'

call plug#end()

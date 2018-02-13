" SETTINGS
set ignorecase
set smartcase
set shiftwidth=0
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
set showcmd
set linespace=0
set mouse=a
set lazyredraw
set ff=unix
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
      \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
      \,sm:block-blinkwait175-blinkoff150-blinkon175
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=3
set numberwidth=5
set wmh=0
set list

" Enable cursor line position tracking:
:set cursorline
" Remove the underline from enabling cursorline:
:highlight clear CursorLine
" Set line numbering to red background:
:highlight CursorLineNR ctermbg=red

" COMMANDS
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
autocmd TextChanged,TextChangedI execute JSContextColorToggle
exec 'set viminfo=%,' . &viminfo


" THEMES
let base16colorspace=256  " Access colors present in 256 colorspace
let theme=$BASE16_THEME
execute 'colorscheme base16-' . theme
let g:airline_theme='angr'

" Keep selected line centered
augroup VCenterCursor
  au!
  au BufEnter,WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=winheight(win_getid())/2
augroup END

" Fix vim-css3-syntax
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

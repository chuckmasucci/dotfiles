
" ██████╗
"██╔════╝
"██║     
"██║     
"╚██████╗
" ╚═════╝

" ═════════════════
"   Chromatica 
" ═════════════════
let g:chromatica#libclang_path='/usr/lib/llvm-4.0/lib/libclang.so'
let g:chromatica#highlight_feature_level=1
let g:chromatica#responsive_mode=1
let g:chromatica#enable_at_startup=1
call plug#load('chromatica.nvim')
execute 'ChromaticaStart'

" ═════════════════
"   Conque GDB
" ═════════════════
let g:ConqueTerm_Color = 2         " 1: strip color after 200 lines, 2: always with color
let g:ConqueTerm_CloseOnEnd = 1    " close conque when program ends running
let g:ConqueTerm_StartMessages = 0 " display warning messages if conqueTerm is configured incorrectly
call plug#load('Conque-GDB')

" ═════════════════
"   ALE
" ═════════════════
let g:ale_c_gcc_options = '-I/home/chuck/.local/lib/chuck/dbg -I/home/chuck/.local/lib/chuck/list'
    \. " -I/home/chuck/.local/lib/chuck/darray"


" Load plugins
call plug#load('ncm-clang')

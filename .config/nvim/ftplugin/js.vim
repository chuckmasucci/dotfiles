
"     ██╗ █████╗ ██╗   ██╗ █████╗ ███████╗ ██████╗██████╗ ██╗██████╗ ████████╗
"     ██║██╔══██╗██║   ██║██╔══██╗██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝
"     ██║███████║██║   ██║███████║███████╗██║     ██████╔╝██║██████╔╝   ██║   
"██   ██║██╔══██║╚██╗ ██╔╝██╔══██║╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   
"╚█████╔╝██║  ██║ ╚████╔╝ ██║  ██║███████║╚██████╗██║  ██║██║██║        ██║   
" ╚════╝ ╚═╝  ╚═╝  ╚═══╝  ╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   

" ════════════════════════════════════
"   Vim JavaScript Context Coloring
" ════════════════════════════════════
let g:js_context_colors_colorize_comments = 1
let g:js_context_colors_highlight_function_names = 1
let g:js_context_colors_jsx = 1

" ════════════════════════════════════
"   jsdoc.vim
" ════════════════════════════════════
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_additional_descriptions = 1
let g:jsdoc_enable_es6 = 1

" ════════════════════════════════════
"   ALE
" ════════════════════════════════════
let g:ale_javascript_eslint_use_global = 1

" Load plugins
call plug#load('yajs.vim')
call plug#load('vim-js-context-coloring')
call plug#load('vim-jsx')
call plug#load('vim-json')
call plug#load('vim-jsdoc')
call plug#load('vim-js-context-coloring'')
call plug#load('jspc-vim')

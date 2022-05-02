let g:tex_flavor  = 'latex'
let g:tex_conceal = ''
let g:vimtex_fold_manual = 1
" let g:vimtex_latexmk_continuous = 1
let g:vimtex_compiler_progname = 'nvr'
" use SumatraPDF if you are on Windows
let g:latex_view_general_viewer = 'zathura'
let g:vimtex_view_method = 'zathura'
" let g:vimtex_mappings_enabled = 1

nmap <leader>tc     :VimtexCompile<CR>
nmap <leader>tv     :VimtexView<CR>

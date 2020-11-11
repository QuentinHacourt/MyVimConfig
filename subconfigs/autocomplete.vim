" close html/xml tags
inoremap ><CR> ><Esc>F<lyt>o</<C-r>"><Esc>O<Space>
inoremap ><TAB> ></<C-X><C-O>
" close {} brackets
"inoremap {<CR> {<Esc>o}<Esc>O<Space>

" close ()
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O

" yaml settings
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab

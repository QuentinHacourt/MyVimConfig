autocmd FileType dart setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType dart nnoremap <leader>dr :!dart run<cr>
autocmd FileType dart nnoremap <leader>df :DartFmt<cr>
autocmd FileType dart let g:dart_format_on_save = 1

" let g:syntastic_cpp_checkers = ['cpplint']
" let g:syntastic_c_checkers = ['cpplint']
" let g:syntastic_cpp_cpplint_exec = 'cpplint'
" The following two lines are optional. Configure it to your liking!
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
nnoremap <Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType cpp setlocal ts=2 sts=2 sw=2 expandtab

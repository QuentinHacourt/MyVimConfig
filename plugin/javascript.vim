autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

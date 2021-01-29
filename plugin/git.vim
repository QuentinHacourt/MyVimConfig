" vim fugitive/git bindings
nmap <leader>gh :diffget //3<CR>
nmap <leader>gg :diffget //2<CR>
nmap <leader>gs :G<CR>
nmap <leader>gP :Gpush<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gC :GCheckout<CR>
nmap <leader>gB :GBranches<CR>
nmap <leader>gp :Gpull<CR>
nmap <leader>grm :Git rebase -i master<CR>
nmap <leader>grM :Git rebase -i main<CR>
nmap <leader>grc :Git rebase --continue<CR>
nmap <leader>gf :Gpush --force-with-lease<CR>

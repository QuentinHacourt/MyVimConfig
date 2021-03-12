" vim fugitive/git bindings
nmap <leader>gh :diffget //3<CR>
nmap <leader>gg :diffget //2<CR>
nmap <leader>gs :G<CR>
nmap <leader>gP :Git push<CR>
nmap <leader>gc :Git commit<CR>
nmap <leader>gC :GCheckout<CR>
nmap <leader>gB :GBranches<CR>
nmap <leader>gp :Git pull<CR>
nmap <leader>grm :Git rebase -i master<CR>
nmap <leader>grM :Git rebase -i main<CR>
nmap <leader>gmm :Git merge master<CR>
nmap <leader>gmM :Git merge main<CR>
nmap <leader>grc :Git rebase --continue<CR>
nmap <leader>gF :Git push --force-with-lease<CR>
nmap <leader>gf :Git fetch<CR>

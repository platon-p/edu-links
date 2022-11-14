require('keys/alias')
im('<C-k>', '<escape>')
nm('gl', '<cmd>NvimTreeFocus<CR>')
nm('gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
nm('¬', '<cmd>PrettierAsync<CR>')
nm('gr', '<cmd>w<CR><cmd>!g++ %; ./a.out<CR>')
nm(',c', '<cmd>!cat % | pbcopy<CR><CR>')


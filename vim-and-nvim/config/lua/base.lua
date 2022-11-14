local opt = vim.opt

opt.number = true
opt.mouse = 'a'
opt.encoding = 'utf-8'

vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]
-- leader ,
vim.g.mapleader = ','


-- encoding
-- vim.o.encofing = 'utf-8'
vim.scriptencoding = 'utf-8'

-- visual
vim.o.ambiwidth = 'single'
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.guifont = "HackGen Console Regular:h12"
vim.o.termguicolors = true
vim.o.signcolumn = "yes"

vim.o.visualbell = true
vim.o.number = true
vim.o.showmatch = true
vim.o.matchtime = 1

-- search
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true

-- manipulation
vim.g.mapleader = ' '
vim.opt.clipboard:append { 'unnamedplus' }
vim.o.ttimeout = true
vim.o.ttimeoutlen = 50

vim.o.undofile = true
vim.o.undodir = vim.fn.stdpath('cache') .. '/undo'

vim.keymap.set('n', 'j', 'gj', { noremap = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true })
vim.keymap.set('n', '<Down>', 'gj', { noremap = true })
vim.keymap.set('n', '<Up>', 'gk', { noremap = true })
vim.keymap.set('n', 'gj', 'j', { noremap = true })
vim.keymap.set('n', 'gk', 'k', { noremap = true })
vim.keymap.set('n', 'Y', 'y$', { noremap = true })
vim.keymap.set('n', '+', '<C-a>', { noremap = true })
vim.keymap.set('n', '-', '<C-x>', { noremap = true })
vim.keymap.set('n', '<Leader>w', '<cmd>w<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>wq', '<cmd>wq<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>q', '<cmd>q<CR>', { noremap = true })
vim.keymap.set('i', 'jj', '<ESC>', { noremap = true, silent = true })
vim.keymap.set('n', 'ss', '<c-w>s', { noremap = true })
vim.keymap.set('n', 'sv', '<c-w>v', { noremap = true })
vim.keymap.set('n', 'sh', '<c-w>h', { noremap = true })
vim.keymap.set('n', 'sj', '<c-w>j', { noremap = true })
vim.keymap.set('n', 'sk', '<c-w>k', { noremap = true })
vim.keymap.set('n', 'sl', '<c-w>l', { noremap = true })

-- for ocaml
vim.api.nvim_create_autocmd({"BufRead"}, {
  pattern = "*.mly",
  command = "set filetype=ocaml.menhir"
})
vim.api.nvim_create_autocmd({"BufRead"}, {
  pattern = "*.mll",
  command = "set filetype=ocaml.ocamllex"
})
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('turn_off_auto_commenting', {}),
  pattern = '*',
  command = [[setlocal fo-=cro]]
})

require("lazy_nvim")

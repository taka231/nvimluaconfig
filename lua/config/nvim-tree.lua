-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
vim.keymap.set('n', '<leader>e', vim.cmd.NvimTreeToggle)

require('nvim-tree').setup {
  sort_by = 'extension',

  view = {
    width = '20%',
    side = 'right',
    signcolumn = 'no',
  },

  renderer = {
    highlight_git = true,
    highlight_opened_files = 'name',
    icons = {
      glyphs = {
        git = {
          unstaged = '!', renamed = '»', untracked = '?', deleted = '✘',
          staged = '✓', unmerged = '', ignored = '◌',
        },
      },
    },
  },

  actions = {
    expand_all = {
      max_folder_discovery = 100,
      exclude = { '.git', 'target', 'build' },
    },
  },

  on_attach = 'default'
}

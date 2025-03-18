local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, { noremap = true })
vim.keymap.set('n', '<leader>lg', builtin.live_grep, { noremap = true })
vim.keymap.set('n', '<leader>bu', builtin.buffers, { noremap = true })
vim.keymap.set('n', '<leader>di', '<cmd>Telescope diagnostics<cr>', { noremap = true })
vim.keymap.set('n', '<leader>fr', '<cmd>Telescope frecency<cr>', { noremap = true })
vim.keymap.set('n', '<leader>gs', '<cmd>Telescope git_status<cr>', { noremap = true })
vim.keymap.set('n', '<leader>gc', '<cmd>Telescope git_commits<cr>', { noremap = true })
vim.keymap.set('n', '<leader>fc', '<cmd>Telescope find_files cwd=~/.config/nvim<cr>', { noremap = true })
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { noremap = true })
require("telescope").setup({
    defaults = {
        file_ignore_patterns = {
            -- 検索から除外するものを指定
            "^.git/",
            "^.cache/",
            "^Library/",
            "Parallels",
            "^Movies",
            "^Music",
            "node_modules",
        },
        vimgrep_arguments = {
            -- ripggrepコマンドのオプション
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "-uu",
        },
        theme = "dropdown",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
            results_width = 0.8,
          },
          vertical = {
            mirror = false,
          },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
        border = {},
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
        winblend = 0,
        mappings = {
          i = {
            ['<esc>'] = require('telescope.actions').close,
          },
        },
    },
    extensions = {
    },
})


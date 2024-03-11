return {
  {
    'folke/tokyonight.nvim',
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end
  },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('config/telescope')
    end
  },
  {
    "nvim-telescope/telescope-frecency.nvim",
    config = function()
      require("telescope").load_extension "frecency"
    end,
    dependencies = { "kkharji/sqlite.lua" },
  },
  {
    'nvim-treesitter/nvim-treesitter',
    event = { 'BufNewFile', 'BufRead' },
    build = ":TSUpdate",
    config = function()
      require('config/nvim-treesitter')
    end
  },
  {
    'nvim-tree/nvim-web-devicons',
    config = function()
      require('config/nvim-web-devicons')
    end
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('config/gitsigns')
    end
  },
  'cohama/lexima.vim',
  {
    'akinsho/bufferline.nvim',
    config = function()
      require("config/bufferline")
    end
  },
  {
    'rlane/pounce.nvim',
    config = function()
      vim.keymap.set("n", "m", "<cmd>Pounce<cr>", { noremap = true, silent = true })
    end
  },
  {
    'windwp/nvim-ts-autotag',
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },
  {
    'folke/noice.nvim',
    event = "VeryLazy",
    config = function()
      require("config/noice")
    end,
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    opts = {}
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      { "williamboman/mason.nvim" },
      { "neovim/nvim-lspconfig" },
      { "hrsh7th/nvim-cmp" },
      { "lukas-reineke/lsp-format.nvim" },
      { "jay-babu/mason-null-ls.nvim" }
    },
    config = function()
      require("config/mason-lspconfig")
    end
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-vsnip",
      "hrsh7th/vim-vsnip",
      "hrsh7th/cmp-calc",
    },
    config = function()
      require("config/nvim-cmp")
    end
  },
  {
    "simrat39/rust-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "mfussenegger/nvim-dap"
    },
    config = function()
      require("config/rust-tools")
    end
  },
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("config/lspsaga")
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = function()
      require("config/lualine")
    end
  },
  {
    "yuttie/comfortable-motion.vim",
    config = function()
      require("config/comfortable-motion")
    end
  },
  {
    "rust-lang/rust.vim",
    config = function()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      vim.opt.list = true
      vim.opt.listchars:append "eol:↴"
      require("indent_blankline").setup {
        show_end_of_line = true,
      }
    end
  },
  -- {
  --   "nvim-tree/nvim-tree.lua",
  --   dependencies = {
  --     "nvim-tree/nvim-web-devicons"
  --   },
  --   config = function()
  --     require("config/nvim-tree")
  --   end
  -- },
  {
    "lambdalisue/fern.vim",
    config = function()
      require("config/fern")
    end,
    dependencies = {
      'lambdalisue/nerdfont.vim',
      'lambdalisue/fern-renderer-nerdfont.vim',
      'lambdalisue/fern-git-status.vim',
      'lambdalisue/fern-hijack.vim',
    }
  },
  {
    "is0n/jaq-nvim",
    config = function()
      require("config/jaq-nvim")
    end
  },
  {
    "kassio/neoterm",
    config = function()
      require("config/neoterm")
    end
  },
  {
    "andymass/vim-matchup",
    config = function()
      -- vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end
  },
  {
    "zbirenbaum/copilot.lua",
    config = function()
      require("copilot").setup({
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<C-l>"
          }
        }
      })
    end
  },
  {
    "nvimtools/none-ls.nvim",
    config = function()
      require("config/none-ls")
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    }
  },
  {
    "j-hui/fidget.nvim",
    config = function()
      require('fidget').setup {}
    end
  }
}

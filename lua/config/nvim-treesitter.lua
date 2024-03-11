require('nvim-treesitter.configs').setup {
  ensure_installed = {
    "typescript",
    "tsx",
    "javascript",
    "rust",
    "python",
    "go",
    "lua",
    "bash",
    "html",
    "css",
    "vue",
    "vim",
    "yaml",
    "toml",
    "ini",
    "json",
    "dockerfile",
    "markdown",
    "diff",
    "gitignore"
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  matchup = {
    enable = true,
  }
}

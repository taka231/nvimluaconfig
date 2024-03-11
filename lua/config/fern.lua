vim.keymap.set('n', '<Leader>e', '<cmd>Fern . -drawer -toggle<cr>', { noremap = true })
vim.keymap.set('n', '<Leader>cd', '<Plug>(fern-action-cd)', { noremap = true })
vim.api.nvim_create_augroup("vimrc", {})
vim.api.nvim_create_autocmd("WinEnter", {
  callback = function()
    if (vim.bo.filetype ~= "fern") then
      vim.cmd("FernDo close -stay")
    end
  end,
})

vim.g["fern#renderer"] = "nerdfont"

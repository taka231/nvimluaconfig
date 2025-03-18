require("mason").setup()
require("mason-null-ls").setup({
  handlers = {},
})
require("mason-lspconfig").setup_handlers({
  function(server)
    local opt = {
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
    }
    if server == "clangd" then
      opt.cmd = { "clangd", "--offset-encoding=utf-16" }
    end
    require("lspconfig")[server].setup(opt)
  end,
})

-- require("lsp-format").setup {}

function on_attach(on_attach)
  vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
      local buffer = args.buf
      local client = vim.lsp.get_client_by_id(args.data.client_id)
      on_attach(client, buffer)
      -- require("lsp-format").on_attach(client, buffer)
    end,
  })
end

on_attach(function(client, buffer)
  vim.keymap.set("n", "<leader>h", "<cmd>Lspsaga hover_doc<CR>")
  vim.keymap.set("n", "<leader>fmt", "<cmd>lua vim.lsp.buf.format({timeout = 1000, async=true})<CR>")
  vim.keymap.set("n", "<leader>rf", "<cmd>Lspsaga finder def+ref<CR>")
  vim.keymap.set("n", "<leader>dj", "<cmd>lua vim.lsp.buf.definition()<CR>")
  vim.keymap.set("n", "<leader>df", "<cmd>Lspsaga peek_definition<CR>")
  vim.keymap.set("n", "<leader>dc", "<cmd>lua vim.lsp.buf.declaration()<CR>")
  vim.keymap.set("n", "<leader>ip", "<cmd>lua vim.lsp.buf.implementation()<CR>")
  vim.keymap.set("n", "<leader>td", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
  vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>")
  vim.keymap.set("n", "<leader>ac", "<cmd>Lspsaga code_action<CR>")
  vim.keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>")
  vim.keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<<CR>")
  if client.name == "tsserver" then
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end
end)

vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false })

local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(client, bufnr)
      require("config/mason-lspconfig").on_attach(client, bufnr)
    end
  }
})

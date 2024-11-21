return {
  "neovim/nvim-lspconfig",
  config = function()
    -- Basic LSP setup
    local lspconfig = require("lspconfig")

    -- Example of configuring a language server
    require("lspconfig").pyright.setup{}
    require("lspconfig").ts_ls.setup{}
    require("lspconfig").gopls.setup{}
    require("lspconfig").lua_ls.setup{}
    require("lspconfig").clangd.setup{}
    require("lspconfig").html.setup{}
    require("lspconfig").cssls.setup{}
  end,
}


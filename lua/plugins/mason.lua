return {
  "williamboman/mason.nvim",
  config = function()
    -- Setup Mason
    local wk = require("which-key")
    require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      },
    })


  wk.add({
    mode = { "n" },
    { "<Leader>m", "<cmd>Mason<CR>"},
  })
  end,
  }

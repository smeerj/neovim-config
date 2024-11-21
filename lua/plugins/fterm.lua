return {
  "numToStr/FTerm.nvim",
  config = function()
    local fterm = require("FTerm")
    local wk = require("which-key")

    fterm.setup({
      blend = 10,
      dimensions = {
        height = 0.6,
        width = 0.6,
      },
    })

    wk.add({
      {
        mode = { "n", "t" },
        { "<Leader>t", group = "Terminal" },
        { "<Leader>tt", fterm.toggle, desc = "Toggle terminal" },
        { "<Leader>to", fterm.open, desc = "Toggle terminal" },
        { "<Leader>tc", fterm.close, desc = "Toggle terminal" },
        { "<Leader>tk", fterm.exit, desc = "Toggle terminal" },
      },
    })
  end,
}


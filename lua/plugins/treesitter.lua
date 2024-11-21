return {
  "nvim-treesitter/nvim-treesitter",
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })()
  end,
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "go", "toml" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}


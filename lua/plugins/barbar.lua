return {
  "romgrk/barbar.nvim",
    require('lazy').setup {
      {
        'romgrk/barbar.nvim',
        dependencies = {
          'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
          'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        config = function()
          local wk = require('which-key')
          require("conform").setup {
            -- Setup options for barbar.nvim
            animation = true, -- Example option (add any other options you want here)

            -- Add sidebar_filetypes configuration here:
            sidebar_filetypes = {
              NvimTree = true,
              undotree = {
                text = 'undotree',
                align = 'center',
              },
              ['neo-tree'] = {
                text = 'File Explorer',
                align = 'left',
              },
              Outline = {
                event = 'BufWinLeave',
                text = 'symbols-outline',
                align = 'right',
              },
            },
          }

        wk.add({
        {
          { "<Leader>b", group = "Buffers" },
          { "<Leader>bn", "<cmd>BufferMoveNext<CR>", desc = "Move next" },
        },
        })
        end,
      },
    }
}


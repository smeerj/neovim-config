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
        opts = {
          -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
          -- animation = true,
          -- insert_at_start = true,
          -- …etc.

          -- Add sidebar_filetypes here:
          sidebar_filetypes = {
            NvimTree = true,
            -- Example for undotree:
            undotree = {
              text = 'undotree',
              align = 'center', -- optionally specify alignment
            },
            -- Example for neo-tree:
            ['neo-tree'] = {
              text = 'File Explorer', -- optional: text displayed in offset
              align = 'left',
            },
            -- Example for Outline:
            Outline = {
              event = 'BufWinLeave',
              text = 'symbols-outline',
              align = 'right',
            },
          },
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
      },
    }
}


return    {
      'nvim-telescope/telescope.nvim',  
      dependencies = { 'nvim-lua/plenary.nvim' },  
      config = function()
        local finders = require("telescope.builtin")
        local wk = require("which-key")

        wk.add({
          { "<Leader>f", group = "Find" },
          { "<Leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find files" },
          { "<Leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Live grep" },
          { "<Leader>fb", "<cmd>Telescope buffers<CR>", desc = "Buffers" },
          { "<Leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Help tags" },

          { "<Leader>fg", group = "Git" },
          { "<Leader>fgc", "<cmd>Telescope git_commits<CR>", desc = "Find Git commits" },
          { "<Leader>fgbr", finders.git_branches, desc = "Find Git branches" },
          { "<Leader>fgbc", finders.git_bcommits, desc = "Find Git buffer commits" },
        })

      end,
}

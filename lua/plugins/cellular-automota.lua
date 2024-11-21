return {
  "eandrju/cellular-automaton.nvim",  -- Plugin itself
  config = function()
    require("cellular-automaton")
    local wk = require("which-key")

    wk.add({
      mode = { "n" },
      { "<Leader>y", group = "Cellular Automaton" },
      { "<Leader>yr", "<cmd>CellularAutomaton make_it_rain<CR>", desc = "Make it rain" },
      { "<Leader>yl", "<cmd>CellularAutomaton game_of_life<CR>", desc = "Game of life" },
    })
  end,
}


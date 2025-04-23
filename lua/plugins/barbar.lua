return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	config = function()
		local wk = require("which-key")
		local barbar = require("barbar")

		barbar.setup({
			animation = true, -- Example option
			sidebar_filetypes = {
				NvimTree = true,
				undotree = {
					text = "undotree",
					align = "left",
				},
				["neo-tree"] = {
					text = "File Explorer",
					align = "left",
				},
				Outline = {
					event = "BufWinLeave",
					text = "symbols-outline",
					align = "right",
				},
			},
			-- Add any other barbar options you need here
		})

		wk.add({
			{ "<Leader>b", group = "Buffers" },
			{ "<Leader>bn", "<cmd>BufferMoveNext<CR>", desc = "Move next" },
		})
	end,
}

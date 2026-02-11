return {
	"scottmckendry/cyberdream.nvim",
	config = function()
		require("cyberdream").setup({
			-- Set light or dark variant
			variant = "dark", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
		})
		vim.cmd("colorscheme cyberdream")
	end,
}

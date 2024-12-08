return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					hide_dotfiles = false, -- Show hidden files (those starting with a dot)
					hide_gitignored = false, -- Show git-ignored files
				},
			},
		})

		vim.keymap.set("n", "<Leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
	end
}

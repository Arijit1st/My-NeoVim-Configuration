return {
	"nvim-pack/nvim-spectre",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>fr", '<cmd>lua require("spectre").toggle()<CR>', { silent = true })
		vim.keymap.set("n", "<leader>fw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', { silent = true })
		vim.keymap.set("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', { silent = true })
		vim.keymap.set("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', { silent = true })
	end
}

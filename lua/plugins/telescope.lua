return {
	'nvim-telescope/telescope.nvim',
	tag = '-1.1.8',
	dependencies = {
		'nvim-lua/plenary.nvim'
	},
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set("n", "<Leader>ff", builtin.find_files, { noremap = true })
		vim.keymap.set("n", "<Leader>fg", builtin.live_grep, { noremap = true })
	end
}

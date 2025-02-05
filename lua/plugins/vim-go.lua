return {
	"fatih/vim-go",
	build = ":GoInstallBinaries",
	config = function()
		vim.keymap.set("n", "<Leader>gfi", ":GoImports<CR>", { silent = true })
		vim.keymap.set("n", "<Leader>gfs", ":GoFillStruct<CR>", { silent = true })
	end,
}

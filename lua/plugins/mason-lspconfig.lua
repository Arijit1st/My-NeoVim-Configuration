return {
	"williamboman/mason-lspconfig.nvim",
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"gopls", -- Go language server
				"cssls", -- CSS language server
				"html", -- HTML language server
				"lua_ls", -- Lua language server
				"ts_ls", -- TypeScript/JavaScript language server,
				"eslint",
			},
		})
	end,
}

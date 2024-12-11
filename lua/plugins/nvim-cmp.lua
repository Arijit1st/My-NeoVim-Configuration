return {
	"hrsh7th/nvim-cmp",
	config = function()
		local cmp = require("cmp")
		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			snippet = {
				-- REQUIRED - you must specify a snippet engine
				expand = function(args)
					require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "codeium" },
				{ name = "luasnip" }, -- For luasnip users.
			}, {
				{ name = "buffer" },
			}),
		})

		-- LSP Keybindings
		vim.keymap.set("n", "<Leader>do", vim.lsp.buf.hover, { silent = true }) -- Show hover documentation
		vim.keymap.set("n", "<Leader>gd", vim.lsp.buf.definition, { silent = true }) -- Go to definition
		vim.keymap.set("n", "<Leader>gi", vim.lsp.buf.implementation, { silent = true }) -- Go to implementation
		vim.keymap.set("n", "<Leader>rf", vim.lsp.buf.references, { silent = true }) -- Show references
		vim.keymap.set("n", "<Leader>sh", vim.lsp.buf.signature_help, { silent = true }) -- Show signature help
		vim.keymap.set("n", "<Leader>rs", vim.lsp.buf.rename, { silent = true }) -- Rename symbol
		vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, { silent = true }) -- Show code actions
		vim.keymap.set("n", "<Leader>ds", vim.lsp.buf.document_symbol, { silent = true }) -- Show document symbols
		vim.keymap.set("n", "<Leader>ws", vim.lsp.buf.workspace_symbol, { silent = true }) -- Show workspace symbols
		vim.keymap.set("n", "<Leader>td", vim.lsp.buf.type_definition, { silent = true }) -- Go to type definition
		vim.keymap.set("n", "<Leader>fo", vim.lsp.buf.format, { silent = true }) -- Format Document

		-- CodeLens
		vim.keymap.set("n", "<Leader>cl", vim.lsp.codelens.refresh, { silent = true }) -- Refresh code lenses
		vim.keymap.set("n", "<Leader>ce", vim.lsp.codelens.run, { silent = true }) -- Execute code lens

		-- Diagnostics
		vim.keymap.set('n', '<Leader>dn', vim.diagnostic.goto_next, { silent = true }) -- Go to next diagnostic
		vim.keymap.set("n", "<Leader>dp", vim.diagnostic.goto_prev, { silent = true }) -- Go to previous diagnostic
		vim.keymap.set("n", "<Leader>df", vim.diagnostic.open_float, { silent = true }) -- Show diagnostic in floating window
		vim.keymap.set("n", "<Leader>dq", vim.diagnostic.setloclist, { silent = true }) -- Add diagnostics to location list

		-- Highlighting
		vim.keymap.set("n", "<Leader>hi", vim.lsp.buf.document_highlight, { silent = true }) -- Highlight symbol occurrences
		vim.keymap.set("n", "<Leader>hc", vim.lsp.buf.clear_references, { silent = true }) -- Clear symbol highlights

		-- LSP Management
		vim.keymap.set("n", "<Leader>lr", ":LspRestart<CR>", { silent = true }) -- Restart LSP
		vim.keymap.set("n", "<Leader>ls", ":LspStop<CR>", { silent = true }) -- Stop LSP
	end,
}

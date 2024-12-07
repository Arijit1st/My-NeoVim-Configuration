-- Basic settings
vim.keymap.set("n", "<Leader>sc", ":nohlsearch<CR>", { silent = true })
vim.keymap.set("n", "<C-Right>", ":bn<CR>", { silent = true })
vim.keymap.set("n", "<C-Left>", ":bp<CR>", { silent = true })
vim.keymap.set("n", "<Leader>ct", ":bd<CR>", { silent = true })
for i=0,9 do
	vim.keymap.set("n", "<Leader>t" .. i, ":b" .. i .. "<CR>", { silent = true })
end
-- Line movement
vim.keymap.set("n", "<C-S-Up>", ":m .-2<CR>", { silent = true })   -- Move current line up
vim.keymap.set("n", "<C-S-Down>", ":m .+1<CR>", { silent = true }) -- Move current line down

-- LSP Keybindings
vim.keymap.set("n", "<Leader>do", vim.lsp.buf.hover, { silent = true })            -- Show hover documentation
vim.keymap.set("n", "<Leader>gd", vim.lsp.buf.definition, { silent = true })       -- Go to definition
vim.keymap.set("n", "<Leader>gi", vim.lsp.buf.implementation, { silent = true })   -- Go to implementation
vim.keymap.set("n", "<Leader>rf", vim.lsp.buf.references, { silent = true })       -- Show references
vim.keymap.set("n", "<Leader>sh", vim.lsp.buf.signature_help, { silent = true })   -- Show signature help
vim.keymap.set("n", "<Leader>rs", vim.lsp.buf.rename, { silent = true })           -- Rename symbol
vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, { silent = true })      -- Show code actions
vim.keymap.set("n", "<Leader>ds", vim.lsp.buf.document_symbol, { silent = true })  -- Show document symbols
vim.keymap.set("n", "<Leader>ws", vim.lsp.buf.workspace_symbol, { silent = true }) -- Show workspace symbols
vim.keymap.set("n", "<Leader>td", vim.lsp.buf.type_definition, { silent = true })  -- Go to type definition
vim.keymap.set("n", "<Leader>fo", vim.lsp.buf.format, { silent = true })           -- Format Document

-- CodeLens
vim.keymap.set("n", "<Leader>cl", vim.lsp.codelens.refresh, { silent = true }) -- Refresh code lenses
vim.keymap.set("n", "<Leader>ce", vim.lsp.codelens.run, { silent = true })     -- Execute code lens

-- Diagnostics
vim.keymap.set("n", "<Leader>dn", vim.diagnostic.goto_next, { silent = true })  -- Go to next diagnostic
vim.keymap.set("n", "<Leader>dp", vim.diagnostic.goto_prev, { silent = true })  -- Go to previous diagnostic
vim.keymap.set("n", "<Leader>dl", vim.diagnostic.open_float, { silent = true }) -- Show diagnostic in floating window
vim.keymap.set("n", "<Leader>dq", vim.diagnostic.setloclist, { silent = true }) -- Add diagnostics to location list

-- Highlighting
vim.keymap.set("n", "<Leader>hi", vim.lsp.buf.document_highlight, { silent = true }) -- Highlight symbol occurrences
vim.keymap.set("n", "<Leader>hc", vim.lsp.buf.clear_references, { silent = true }) -- Clear symbol highlights

-- LSP Management
vim.keymap.set("n", "<Leader>lr", ":LspRestart<CR>", { silent = true }) -- Restart LSP
vim.keymap.set("n", "<Leader>ls", ":LspStop<CR>", { silent = true })    -- Stop LSP

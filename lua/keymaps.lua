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


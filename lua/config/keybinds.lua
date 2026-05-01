

vim.keymap.set("n","<leader>cd",":Ex<CR>")

--Neo-tree
-- <C-w> hjkl for change in the selected windows.

--Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>fb', builtin.buffers)
vim.keymap.set('n', '<leader>fh', builtin.help_tags)

--Fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, {desc="Git Status"})
vim.keymap.set("n", "<leader>gp", ":Git push<CR>",{desc = "Git Push"})



--Lsp
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { desc = "LSP Goto Definition" })

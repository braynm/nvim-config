vim.g.mapleader = " "
-- Switch to window
vim.keymap.set('n', '<Tab>', '<C-w>w', { noremap = true, silent = false })
--
-- Save file
vim.keymap.set({ 'n', 'i', 'v' }, '<C-s>', '<C-c>:w<CR>', { noremap = true, silent = false })

-- Find file NERDTree
vim.keymap.set('n', '<Leader>d', ':NvimTreeFindFile<CR>')
vim.keymap.set('n', '<Leader>o', ':NvimTreeOpen<CR>')

-- remove highlight
vim.keymap.set('n', '<Leader><Leader>', ':noh<CR>', { noremap = true, silent = false })

-- Yak current cursor to the end of the line
vim.keymap.set('n', 'Y', 'y$', { noremap = true, silent = false })

-- Replace word and press `.` to replace matched words
vim.keymap.set('n', '<Leader>r', '*#cgn', { noremap = true, silent = false })

-- move line
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

-- append to end of line
vim.keymap.set("n", "J", "mzJ`z")


-- allow search to be always at the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- center on scroll
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- do not flush the yanked and pasted from register
vim.keymap.set("x", "<leader>p", "\"_dP\"_dP")

-- yanked to clipboard
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>Y", "\"+Y")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- edit file relative to directory
vim.keymap.set("n", "<leader><tab>", ":e %:h<CR>")

-- go to context (e.g. function, module or class)
vim.keymap.set("n", "[c", function()
        require("treesitter-context").go_to_context()
end, { silent = true })

-- close file
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- resize/maximize current window
vim.keymap.set({ 'n', 'v' }, "<leader>m", "<C-w>_<C-w>|")
vim.keymap.set({ 'n', 'v' }, "<leader>M", "<C-w>=")

-- git log
vim.keymap.set('n', "<leader>gl", ":Gllog -- %<CR>")

-- new tab
vim.keymap.set('n', "<leader>t", ":tabe<CR>")

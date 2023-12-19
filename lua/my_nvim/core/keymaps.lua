local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- Map leader key
vim.g.mapleader = ","

vim.cmd([[
	nnoremap <leader>nh :nohl<CR>
	nnoremap <A-l> <C-w>l " Move to left screen
	nnoremap <A-h> <C-w>h " Move to right screen
	nnoremap <A-j> <C-w>j " Move to lower screen
	nnoremap <A-k> <C-w>k " Move to upper screen

	tnoremap <A-l> <C-\><C-N><C-w>l " Move to left screen
	tnoremap <A-h> <C-\><C-N><C-w>h " Move to right screen
	tnoremap <A-j> <C-\><C-N><C-w>j " Move to lower screen
	tnoremap <A-k> <C-\><C-N><C-w>k " Move to upper screen

	inoremap <A-l> <C-\><C-N><C-w>l " Move to left screen
	inoremap <A-h> <C-\><C-N><C-w>h " Move to right screen
	inoremap <A-j> <C-\><C-N><C-w>j " Move to lower screen
	inoremap <A-k> <C-\><C-N><C-w>k " Move to upper screen

	nnoremap <C-l> <C-w>< " Move to left screen
	nnoremap <C-h> <C-w>> " Move to right screen
	nnoremap <C-j> <C-w>+ " Move to lower screen
	nnoremap <C-k> <C-w>- " Move to upper screen

	tnoremap <C-l> <C-\><C-N><C-w>< " Move to left screen
	tnoremap <C-h> <C-\><C-N><C-w>> " Move to right screen
	tnoremap <C-j> <C-\><C-N><C-w>+ " Move to lower screen
	tnoremap <C-k> <C-\><C-N><C-w>- " Move to upper screen

	inoremap <C-l> <C-\><C-N><C-w>< " Move to left screen
	inoremap <C-h> <C-\><C-N><C-w>> " Move to right screen
	inoremap <C-j> <C-\><C-N><C-w>+ " Move to lower screen
	inoremap <C-k> <C-\><C-N><C-w>- " Move to upper screen
]])

-- More accessible ESC in insert and terminal mode
keymap("i", ",.", "<ESC>", default_opts)
keymap("t", ",.", "<C-\\><C-n>", default_opts)
keymap("n", "<leader>ai", "<cmd>ChatGPT<CR>", default_opts)
keymap("n", "<C-c>", "<cmd>ChatGPT<CR>", default_opts)
keymap("v", "<C-c>", "<cmd>ChatGPTRun explain_code<CR>", default_opts)

-- Navigate tabs
-- keymap("n", "<leader>zz", "<cmd>wq<CR>", default_opts)
-- keymap("n", "<leader>zq", "<cmd>q<CR>", default_opts)

-- Closing buffer
keymap("n", "<leader>zz", "<cmd>wq<CR>", default_opts)
keymap("n", "<leader>qq", "<cmd>q!<CR>", default_opts)

-- Creating splits
keymap("n", "<leader>sv", "<cmd>vsplit<CR>", default_opts)
keymap("n", "<leader>sh", "<cmd>split<CR>", default_opts)

-- Navigate between splits

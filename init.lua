require("my_nvim.core.keymaps")
require("my_nvim.lazy")

vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

vim.cmd([[
	set number
	set relativenumber
	set smartindent
	set autoindent
	set tabstop=4
	set shiftwidth=4
	set softtabstop=4
	set smarttab
	set scrolloff=5
	set sidescrolloff=10
	" set mouse=a
	set nowrap
	set expandtab
    set colorcolumn=80
]])


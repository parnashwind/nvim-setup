vim.cmd([[
	let mapleader = ","

	set number
	set relativenumber
	set tabstop=4
	set shiftwidth=4
	set softtabstop=4
	set smarttab
	set autoindent
	set smartindent
	set scrolloff=5
	set sidescrolloff=10
	" set mouse=a
	set nowrap

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

require("my_nvim.lazy")

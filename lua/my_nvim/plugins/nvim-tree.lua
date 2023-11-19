return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		local function my_attach(bufnr)
			local api = require("nvim-tree.api")

			local function opts(desc)
				return {desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true}
			end

			-- default mappings
			api.config.mappings.default_on_attach(bufnr)

			-- custom mappings
			vim.keymap.set('n', 'v', api.node.open.vertical, opts('Open: Vertical Split'))
			vim.keymap.set('n', 'h', api.node.open.horizontal, opts('Open: Horizontal Split'))
		end

		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- change color for arrows in tree to light blue
		vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

		-- configure nvim-tree
		nvimtree.setup({
			on_attach = my_attach,
			view = {
				width = 40,
			},
			renderer = {
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "",
							arrow_open = "",
						},
					},
				},
			},
			-- disable window_picker for
			-- explorer to work well with
			-- windoe splits
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = {".DS_Store"},
			},
			git = {
				ignore = false,
			},
		})

		-- set keymaps
		local keymap = vim.keymap --  for conciseness

		keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
	end
}


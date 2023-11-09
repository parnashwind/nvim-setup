return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {  -- basically tells lazy to run 'require(bufferline).setup(opts)
		options = {
			mode = "tabs",
			separator_style = "slant",
		},
	},
}

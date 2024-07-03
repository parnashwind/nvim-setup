return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        -- priority = 1000,
        -- config = function()
        --     local catppuccin = require("catppuccin")
        --     catppuccin.setup({
        --         flavour = "mocha",
        --         -- transparent_background = true,
        --         no_italics = false,
        --         no_bold = true,
        --         no_underline = true,
        --         dim_inactive = {
        --             enable = false,
        --         }
        --     })
        --
        --     vim.cmd([[
        --         colorscheme catppuccin-mocha
        --         hi Normal ctermbg=None guibg=None
        --         hi NvimTreeNormal ctermbg=None guibg=None
        --         hi NvimTreeNormalNC ctermbg=None guibg=None
        --         hi Visual guibg=#3d3b75 guifg=None
        --         hi ColorColumn guibg=#112244
        --     ]])
        -- end,
    },
    {
        "Mofiqul/vscode.nvim",
        lazy = false,
        -- priority = 1000,
        -- config = function()
        --     vim.cmd([[
        --         colorscheme vscode
        --         hi Normal ctermbg=None guibg=None
        --         hi NvimTreeNormal ctermbg=None guibg=None
        --         hi NvimTreeNormalNC ctermbg=None guibg=None
        --         hi Visual guibg=#3d3b75 guifg=None
        --         hi ColorColumn guibg=#112244
        --     ]])
        -- end,
    },
	{
		"bluz71/vim-nightfly-colors",
        -- lazy = false,
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[
                colorscheme nightfly
                hi Normal ctermbg=None guibg=None
                hi NvimTreeNormal ctermbg=None guibg=None
                hi NvimTreeNormalNC ctermbg=None guibg=None
                hi Visual guibg=#3d3b65 guifg=None
                hi ColorColumn guibg=#112244
                hi semshiSelected guibg=#224455 guifg=#ffffff
			]])
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
        -- priotity = 1000,
        -- config = function()
        --     vim.cmd([[
        --     colorscheme tokyonight
        --     hi Normal ctermbg=None guibg=None
        --     hi NvimTreeNormal ctermbg=None guibg=None
        --     hi nvimtreenormalnc ctermbg=None guibg=None
        --     hi Visual guibg=#3d3b75 guifg=#159357
        --     ]])
        -- end,
	},
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        -- priotity = 1000,
        -- config = function()
        --     vim.cmd([[
        --     colorscheme kanagawa
        --     hi Normal ctermbg=None guibg=None
        --     hi NvimTreeNormal ctermbg=None guibg=None
        --     hi NvimTreeNormalNC ctermbg=None guibg=None
        --     hi Visual guibg=#3d3b75 guifg=None
        --     ]])
        -- end,
    },
    {
        "Mofiqul/dracula.nvim",
        lazy = false,
        -- priotity = 1000,
        -- config = function()
        --     vim.cmd([[
        --     colorscheme dracula
        --     hi Normal ctermbg=None guibg=None
        --     hi NvimTreeNormal ctermbg=None guibg=None
        --     hi NvimTreeNormalNC ctermbg=None guibg=None
        --     hi Visual guibg=#3d3b75 guifg=None
        --     ]])
        -- end,
    },
}

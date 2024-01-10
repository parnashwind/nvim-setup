return {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
        "folke/trouble.nvim"
    },
    config = function()
        local home = vim.fn.expand("$HOME")
        require("chatgpt").setup({
            api_key_cmd = "gpg --decrypt " .. home .. "/.local/.azureapikey-gpt4.txt.gpg",
            openai_params = {
                max_tokens = 4000,
            },
        })
    end,
}

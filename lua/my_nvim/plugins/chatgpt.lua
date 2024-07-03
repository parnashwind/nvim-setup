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
            api_key_cmd = "gpg --decrypt " .. home .. "/.local/.azureapikey-gpt4o.txt.gpg",
            api_type_cmd = "echo azure",
            azure_api_base_cmd = "echo https://asksiti-ai-4o.openai.azure.com/",
            azure_api_engine_cmd = "echo siti-ai-gpt-4o",
            azure_api_versin_cmd = "echo 2024-02-01",
            openai_params = {
                max_tokens = 4096,
            },
        })
    end,
}

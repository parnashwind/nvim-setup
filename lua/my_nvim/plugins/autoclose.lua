return {
    "m4xshen/autoclose.nvim",
    config = function()
        local autoclose = require("autoclose")

        autoclose.setup({
            keys = {
                ["'"] = {escape=true, close=false, pair="''", disable_filetypes={}},
            }
        })
    end
}

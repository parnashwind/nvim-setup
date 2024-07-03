return {
    "wookayin/semshi",
    build = ":UpdateRemotePlugins",
    version = "*",
    init = function() -- Example
        vim.g['semshi#excluded_hl_groups'] = {"local", "unresolved"}
        vim.cmd ([[
            hi semshiSelected ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#335577
        ]])
        -- vim.g['semshi#error_sign'] = false
    end,
    -- config = function() -- Example
    --     -- some semshi config
    -- end,
}

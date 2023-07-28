return 
{
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        -- https://www.youtube.com/watch?v=aqlxqpHs-aQ
        -- was super helpful on finding out about the config function
        -- this is the default option but leaving here for code sample
        config = function()
            require('tokyonight').setup({
                style="storm"
            })
        end
    }
}

return 
{
    {
        'folke/zen-mode.nvim',
        opts = {
            window = {
                width = 80,
                height = 1,
            }
        },
        config = function() 
            local actions = require("telescope.actions")
            require('telescope').setup({
                defaults = {
                    mappings = {
                        i = {
                            ["<C-k>"] = actions.move_selection_previous,
                            ["<C-j>"] = actions.move_selection_next
                        }
                    }
                }
            })
        end
    }
}

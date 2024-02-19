return 
{
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'BurntSushi/ripgrep'
        },
        config = function() 
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<C-p>', builtin.find_files, {})

            local actions = require("telescope.actions")
            require('telescope').setup({
                defaults = {
                    mappings = {
                        i = {
                            ["<C-k>"] = actions.move_selection_previous,
                            ["<C-j>"] = actions.move_selection_next
                        }
                    },
                    layout_strategy = "horizontal",
                    sorting_strategy = "ascending",
                    layout_config = {
                        prompt_position = "top",
                        preview_width = 80,
                        width = 0.75,
                        height = 0.75
                    }

                },
                pickers = {
                    find_files = {
                        previewer = true
                    },
                    buffers = {
                        previewer = false
                    }
                }
            })
        end
    }
}

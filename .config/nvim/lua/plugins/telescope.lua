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
        end
    }
}

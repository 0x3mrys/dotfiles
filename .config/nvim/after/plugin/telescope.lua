local telescope = require('telescope')

telescope.setup {
    defaults = {
        file_ignore_patterns = {
            "%.meta",
            "%.prefab",
            "%.dll",
            "%.mat"
        },
        path_display = { "truncate" },
        git_status = false
    },
    pickers = {
        git_files = {
            case_mode = "ignore_case",
        }
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "ignore_case",
        }
    }
}

telescope.load_extension('fzf')

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pd', builtin.fd, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>pl', builtin.live_grep, {})

vim.keymap.set('n', '<leader>pgs', builtin.git_status, {})
vim.keymap.set('n', '<leader>pgc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>gf', builtin.lsp_document_symbols, {})

vim.cmd "autocmd User TelescopePreviewerLoaded setlocal number"

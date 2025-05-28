vim.o.guicursor = ""

vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true

vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME" .. "/.vim/undodir")
vim.o.undofile = true

vim.o.wrap = false
vim.o.linebreak = true

vim.o.hlsearch = true
vim.o.incsearch = true

vim.o.cul = true

vim.o.scrolloff = 6
vim.o.updatetime = 50

vim.o.clipboard = 'unnamedplus'

vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "astro", "javascript", "typescript", "javascriptreact", "typescriptreact" },
    callback = function()
        vim.bo.shiftwidth = 2
        vim.bo.tabstop = 2
    end,
})

vim.api.nvim_set_keymap('n', '<leader>b', ':cclose<CR>', { noremap = true, silent = true })

vim.opt.title = true
vim.opt.titlestring = [[%{fnamemodify(getcwd(), ':t')} - nvim]]

vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- vim.opt.list = true
-- vim.opt.listchars = "tab:→ ,space:·,nbsp:␣,trail:·"

vim.opt.foldenable = true

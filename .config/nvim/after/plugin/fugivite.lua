vim.keymap.set("n", "<leader>gs", ":vertical Git<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gd", vim.cmd.Gdiff);
vim.keymap.set("n", "<leader>gl", vim.cmd.GlLog);

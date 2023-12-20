vim.g["bujo#window_width"] = 60

vim.keymap.set("n", "<leader>tdl", "<cmd>Todo g<CR>", { desc = "Open Todo List panel" })
vim.keymap.set("n", "<leader>tdn", "<Plug>BugoAddnormal", { desc = "Create new Todo item" })
vim.keymap.set("n", "<leader>tdc", "<Plug>BugoChecknormal", { desc = "Toggle check of Todo item" })

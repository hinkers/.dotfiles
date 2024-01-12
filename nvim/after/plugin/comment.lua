require('Comment').setup()

vim.api.nvim_set_keymap('v', '<leader>c', ':lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', {noremap = true, silent = true, desc="Toggle line comments"})
vim.api.nvim_set_keymap('n', '<leader>c', ':lua require("Comment.api").toggle.linewise.current()<CR>', {noremap = true, silent = true, desc="Toggle line comments"})

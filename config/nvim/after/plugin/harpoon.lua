local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Mark current file for harpooning" })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Open harpoon quick menu" })

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end, { desc = "Open harpoon file 1"})
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end, { desc = "Open harpoon file 2"})
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end, { desc = "Open harpoon file 3"})
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end, { desc = "Open harpoon file 4"})


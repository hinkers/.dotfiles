return {
    {
        'hinkers/neotasks',
        lazy = false,
        opts = {},
        config = function()
            require('neotasks').setup()
            vim.keymap.set("n", "<leader>tl", "<cmd>TodoList<CR>", { desc="Open NeoTasks Todo List" })
            vim.keymap.set("n", "<leader>to", "<cmd>TodoArchives<CR>", { desc="Open NeoTasks archives" })
        end,
        dev = false,
    },
    --[[{
        'hinkers/nvim-cheatsheet',
        config = function()
            vim.keymap.set("n", "<leader>h", "<cmd>Cheatsheet<CR>", { desc="Open cheatsheet/quick reference" })
        end,
    },]]--
}

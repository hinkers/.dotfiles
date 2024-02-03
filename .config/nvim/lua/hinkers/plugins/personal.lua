return {
    {
        'hinkers/neotasks',
        config = function()
            vim.keymap.set("n", "<leader>tl", "<cmd>TodoList<CR>", { desc="Open NeoTasks Todo List" })
            vim.keymap.set("n", "<leader>to", "<cmd>TodoArchives<CR>", { desc="Open NeoTasks archives" })
        end,
    },
    {
        'hinkers/nvim-cheatsheet',
        config = function()
            vim.keymap.set("n", "<leader>h", "<cmd>Cheatsheet<CR>", { desc="Open cheatsheet/quick reference" })
        end,
    },
}

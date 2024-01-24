require("oil").setup({
    view_options = {
        show_hidden = true,
        is_always_hidden = function(name, bufnr)
            return name == ".."
        end,
    }
})

vim.keymap.set("n", "<leader>pv", '<cmd>Oil<cr>')

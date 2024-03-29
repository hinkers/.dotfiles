return {
    {
        'tamago324/lir.nvim',
        dependencies = { 'nvim-lua/plenary.nvim', 'kyazdani42/nvim-web-devicons' },
        config = function()
            local actions = require'lir.actions'
            local mark_actions = require 'lir.mark.actions'
            local clipboard_actions = require'lir.clipboard.actions'

            require'lir'.setup {
                show_hidden_files = true,
                ignore = {}, -- { ".DS_Store", "node_modules" } etc.
                devicons = {
                    enable = true,
                    highlight_dirname = false
                },
                mappings = {
                    ['l']     = actions.edit,
                    ['<C-s>'] = actions.split,
                    ['<C-v>'] = actions.vsplit,
                    ['<C-t>'] = actions.tabedit,

                    ['h']     = actions.up,
                    ['q']     = actions.quit,

                    ['F']     = actions.mkdir,
                    ['N']     = actions.newfile,
                    ['R']     = actions.rename,
                    ['@']     = actions.cd,
                    ['Y']     = actions.yank_path,
                    ['H']     = actions.toggle_show_hidden,
                    ['D']     = actions.delete,

                    ['J'] = function()
                        mark_actions.toggle_mark()
                        vim.cmd('normal! j')
                    end,
                    ['C'] = clipboard_actions.copy,
                    ['X'] = clipboard_actions.cut,
                    ['P'] = clipboard_actions.paste,
                },
                float = {
                    winblend = 0,
                    curdir_window = {
                        enable = false,
                        highlight_dirname = false
                    },
                },
                hide_cursor = true
            }

            vim.api.nvim_create_autocmd({'FileType'}, {
                pattern = {"lir"},
                callback = function()
                    -- use visual mode
                    vim.api.nvim_buf_set_keymap(
                    0,
                    "x",
                    "J",
                    ':<C-u>lua require"lir.mark.actions".toggle_mark("v")<CR>',
                    { noremap = true, silent = true }
                    )

                    -- echo cwd
                    vim.api.nvim_echo({ { vim.fn.expand("%:p"), "Normal" } }, false, {})
                end
            })

            -- custom folder icon
            require'nvim-web-devicons'.set_icon({
                lir_folder_icon = {
                    icon = "",
                    color = "#7ebae4",
                    name = "LirFolderNode"
                }
            })
        end,

        vim.keymap.set('n', '<leader>pv', '<cmd>lua require("lir.float").toggle()<CR>', {noremap = true, silent = true})
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require('telescope.builtin')

            vim.keymap.set('n', '<leader>pf', function()
                builtin.find_files({ hidden = true })
            end)
            vim.keymap.set('n', '<C-p>', function()
                builtin.git_files({ hidden = true })
            end)
            vim.keymap.set('n', '<leader>ps', function()
                builtin.grep_string({ search = vim.fn.input("Grep > "), hidden = true });
            end)
        end,
    },
}

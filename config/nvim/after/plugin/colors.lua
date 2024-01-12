function ColorMyPencils(color)
    color = color or "dracula"
    if color ~= nil then
        vim.cmd('colorscheme ' .. color)
    end
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()

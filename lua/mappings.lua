require "nvchad.mappings"

local map = vim.keymap.set

local function mark_and_move(motion)
    return function()
        local count = vim.v.count > 0 and vim.v.count or ""
        vim.cmd("normal! m'")
        vim.cmd("normal! " .. count .. motion)
    end
end

for _, m in ipairs({ 'h', 'j', 'k', 'l', 'gg', 'GG' }) do
    map('n', m, mark_and_move(m), { noremap = true, silent = true })
end

map('i', '<Tab>', '<Tab>', { noremap = true, silent = true })

map('n', '<Space>k', ':lua vim.lsp.buf.format()<CR>', {
    noremap = true, silent = true
})

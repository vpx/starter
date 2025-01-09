require "nvchad.mappings"

local map = vim.keymap.set

local function mark_and_move(motion)
    return function()
        local count = vim.v.count > 0 and vim.v.count or ""
        if count ~= "" then
            vim.cmd("normal! m'")
            vim.cmd("normal! " .. count .. motion)
        else
            vim.cmd("normal! " .. motion)
        end
    end
end

for _, m in ipairs({ 'j', 'k' }) do
    map('n', m, mark_and_move(m), { noremap = true, silent = true })
end

map('i', '<Tab>', '<Tab>', { noremap = true, silent = true })

map('n', '<Space>k', ':lua vim.lsp.buf.format()<CR>', {
    noremap = true, silent = true
})

map('n', '<Space><Tab>', function() vim.cmd('ClangdSwitchSourceHeader') end, {
    noremap = true, silent = true
})

map('n', '<C-k>', '<C-i>', { noremap = true, silent = true })

require("nvchad.configs.lspconfig").defaults()

local servers = { 
    "html", "cssls", "cmake", "ts_ls", "tailwindcss", "lua_ls", "clangd" 
}

vim.lsp.enable(servers)

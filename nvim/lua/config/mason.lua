require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    ensure_installed = {
        "tsserver",    -- TypeScript/JavaScript
        "html",        -- HTML
        "cssls",       -- CSS
        "jsonls",      -- JSON
        "lua_ls",      -- Lua
        "astro",       -- Astro
        "tailwindcss", -- Tailwind CSS
    },
    automatic_installation = true,
}) 
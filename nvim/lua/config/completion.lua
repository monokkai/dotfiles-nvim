local cmp = require('cmp')
local luasnip = require('luasnip')
local lspkind = require('lspkind')
local autopairs = require('nvim-autopairs')

-- Load VSCode-like snippets
require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load()

-- Setup autopairs
autopairs.setup({
    check_ts = true,
    ts_config = {
        lua = { "string" },
        javascript = { "template_string" },
        typescript = { "template_string" },
    },
})

-- Setup completion
cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    window = {
        completion = {
            border = "rounded",
            winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
            col_offset = -3,
            side_padding = 1,
        },
        documentation = {
            border = "rounded",
            winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
        },
    },
    formatting = {
        fields = { "kind", "abbr", "menu" },
        format = lspkind.cmp_format({
            mode = "symbol_text",
            maxwidth = 50,
            ellipsis_char = "...",
            symbol_map = {
                Text = "📝",
                Method = "🔧",
                Function = "🔨",
                Constructor = "🏗️",
                Field = "📊",
                Variable = "📦",
                Class = "🏛️",
                Interface = "🌐",
                Module = "📦",
                Property = "🔑",
                Unit = "📏",
                Value = "💎",
                Enum = "📋",
                Keyword = "🔑",
                Snippet = "✂️",
                Color = "🎨",
                File = "📁",
                Reference = "🔗",
                Folder = "📁",
                EnumMember = "📋",
                Constant = "🔒",
                Struct = "🏗️",
                Event = "🎯",
                Operator = "⚡",
                TypeParameter = "📐",
            },
        }),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
    }),
})

-- Set up LSP
local lspconfig = require('lspconfig')

-- Basic LSP setup for common languages
local servers = {
    'tsserver', -- TypeScript/JavaScript
    'html',     -- HTML
    'cssls',    -- CSS
    'jsonls',   -- JSON
    'lua_ls',   -- Lua
    'astro',    -- Astro
    'tailwindcss', -- Tailwind CSS
}

for _, server in ipairs(servers) do
    lspconfig[server].setup({
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
    })
end 
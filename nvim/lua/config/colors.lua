vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = "#75232C" })
vim.api.nvim_set_hl(0, "htmlTag", { fg = "#901E1E" })
vim.api.nvim_set_hl(0, "htmlEndTag", { fg = "#901E1E" })

vim.api.nvim_set_hl(0, "@tag", { fg = "#859901" })
vim.api.nvim_set_hl(0, "htmlTagName", { fg = "#859901" })

vim.api.nvim_set_hl(0, "@string", { fg = "#5B948E" })
vim.api.nvim_set_hl(0, "String", { fg = "#5B948E" })
vim.api.nvim_set_hl(0, "tsxString", { fg = "#5B948E" })
vim.api.nvim_set_hl(0, "jsxString", { fg = "#5B948E" })

vim.api.nvim_set_hl(0, "@attribute", { fg = "#2B6DAB" }) --href, class и т.д.
vim.api.nvim_set_hl(0, "htmlArg", { fg = "#2B6DAB" })
vim.api.nvim_set_hl(0, "tsxAttrib", { fg = "#2B6DAB" })
vim.api.nvim_set_hl(0, "jsxAttrib", { fg = "#2B6DAB" })
vim.api.nvim_set_hl(0, "@property", { fg = "#2B6DAB" })

vim.api.nvim_set_hl(0, "@keyword", { fg = "#A63214" })
vim.api.nvim_set_hl(0, "Keyword", { fg = "#A63214" })
vim.api.nvim_set_hl(0, "Delimiter", { fg = "#842E38" })

-- Цвет для имен компонентов (в импортах и при использовании как тегов)
vim.api.nvim_set_hl(0, "@type", { fg = "#722833" })
vim.api.nvim_set_hl(0, "TypeName", { fg = "#722833" })
vim.api.nvim_set_hl(0, "@constructor", { fg = "#722833" })

-- Цвет для встроенных тегов в JSX/TSX/JS (div, span, button и т.д.)
vim.api.nvim_set_hl(0, "jsxTagName", { fg = "#5A641E" }) 
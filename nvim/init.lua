if vim.loader then
	vim.loader.enable()
end

_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd

vim.cmd [[
	highlight! htmlTag guifg=#FF0000 ctermfg=Red
	highlight! htmlEndTag guifg=#FF0000 ctermfg=Red
	highlight! jsxTag guifg=#FF0000 ctermfg=Red
	highlight! jsxEndTag guifg=#FF0000 ctermfg=Red
	highlight! tsxTag guifg=#FF0000 ctermfg=Red
	highlight! tsxEndTag guifg=#FF0000 ctermfg=Red
	]]

require("config.lazy")

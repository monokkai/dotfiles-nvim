vim.api.nvim_create_autocmd("FileType", {
  pattern = "astro",
  callback = function()
    -- Set up format on save for Astro files
    vim.bo.formatoptions = vim.bo.formatoptions .. "c"
    vim.bo.commentstring = "<!-- %s -->"
    
    -- Enable format on save
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = vim.api.nvim_get_current_buf(),
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })
  end,
})

-- Set up filetype detection for .astro files
vim.filetype.add({
  extension = {
    astro = "astro",
  },
}) 
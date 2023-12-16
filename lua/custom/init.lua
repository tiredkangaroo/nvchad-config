-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.cmd([[
  augroup nvim_lsp
    autocmd!
    autocmd BufRead,BufNewFile * setlocal nowrap
    autocmd BufRead,BufNewFile * setlocal relativenumber
    autocmd BufRead,BufNewFile * setlocal nolist
    autocmd BufRead,BufNewFile * setlocal foldmethod=manual
    autocmd BufRead,BufNewFile * setlocal cursorline
  augroup END
]])
vim.opt.mouse = ""


-- Disable arrow keys
-- Also disables two-finger scrolling on laptop trackpads

vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.copyindent = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.swapfile = false

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.scrolloff = 8
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80,120"

vim.opt.mouse = ""
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

vim.api.nvim_create_autocmd("FileType", {
  pattern = "rust",
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end,
})

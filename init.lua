print("Welcome, Craig.")
print("Test print")

require("craigbanach")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>a", function() print "hi" end)

require("lazy").setup(
    {
        { dir = "~/.config/nvim/lua/craigbanach/plugins/init.lua" },
        {
            'nvim-telescope/telescope.nvim',
            tag = '0.1.4',
            dependencies = {
                'nvim-lua/plenary.nvim',
                { 'nvim-treesitter/nvim-treesitter', build = ":TSUpdate" }
            }
        },
        { dir = "~/.config/nvim/lua/craigbanach/plugins/telescope.lua" },
    }
)   

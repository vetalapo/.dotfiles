-- Enable current line number
vim.opt.number = true

-- Enable relative numbers up to current line and after
vim.wo.relativenumber = true

-- Enable help or docs split below
vim.opt.splitbelow = true

-- Enable vertical split to the right
vim.opt.splitright = true

-- Disable line wrap
vim.opt.wrap = false

-- Use spaces instead of tabs, tabstop alone won't do it, shiftwidth required also
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Sync clipboard between OS and Neovim.
vim.opt.clipboard = "unnamedplus"

-- Positioning cursor in Visual Block mode even if no actual character
vim.opt.virtualedit = "block"

-- Ignore case in search patterns
vim.opt.ignorecase = true

-- Enamble 24-bit RGB color in termital
vim.opt.termguicolors = true

-- Lazy.nvim plugin manager sets up
-- For more info: https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system(
    {
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

-- Lazy.nvim plugins
require("lazy").setup({
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
        vim.cmd.colorscheme "kanagawa-wave"
    end
})


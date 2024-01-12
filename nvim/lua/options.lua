-- Enable current line number
vim.opt.number = true

-- Enable relative numbers up to current line and after
vim.opt.relativenumber = true

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

-- Enable 24-bit RGB color in termital
vim.opt.termguicolors = true

-- Enable leader key (white space)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Lazy.nvim plugin manager
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
        lazypath
    })
end

vim.opt.rtp:prepend(lazypath)

-- Lazy.nvim plugins
require("lazy").setup({
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("kanagawa-wave")
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "c", "cpp", "c_sharp", "lua", "vim", "vimdoc", "query", "bash", "html", "css", "javascript", "json", "typescript", "python", "sql"
                },
                auto_install = true,
                hightlight = {
                    enable = true
                }
            })
        end
    }
})


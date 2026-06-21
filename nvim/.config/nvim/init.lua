require('config.options')
require('config.keymaps')

vim.pack.add({
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/nvim-lua/plenary.nvim' },
    { src = 'https://github.com/nvim-telescope/telescope.nvim' },
    { src = 'https://github.com/nvim-telescope/telescope-fzf-native.nvim' },
    { src = 'https://github.com/mikavilpas/yazi.nvim' },
    { src = 'https://github.com/stevearc/conform.nvim' },
    {
        src = 'https://github.com/obsidian-nvim/obsidian.nvim',
        version = vim.version.range '*' -- use latest release, remove to latest commit.
    }
});

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            }
        }
    }
})

vim.lsp.enable({
    "lua_ls",
    "ts_ls",
    "terraform-lsp",
    "pyright",
    "gopls",
    "astro",
    "oxlint"
})

require('plugins.conform')
require('plugins.obsidian')

require('config.options')

vim.pack.add({
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/nvim-lua/plenary.nvim' },
  { src = 'https://github.com/nvim-telescope/telescope.nvim' },
  { src = 'https://github.com/nvim-telescope/telescope-fzf-native.nvim' },
  { src = 'https://github.com/mikavilpas/yazi.nvim' }
});

vim.lsp.enable({ 
    "lua_ls",
    "ts_ls",
    "terraform-lsp",
    "pyright",
    "gopls",
    "astro"
})


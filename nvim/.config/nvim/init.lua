require('config.options')

vim.pack.add({
  { src = 'https://github.com/neovim/nvim-lspconfig' }
})

vim.lsp.enable({ "lua_ls", "ts_ls" })


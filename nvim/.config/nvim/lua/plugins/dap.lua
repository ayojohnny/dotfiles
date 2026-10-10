local dap = require('dap')

dap.adapters['pwa-node'] = {
  type = 'server',
  host = "127.0.0.1",
  port = "${port}",
  executable = {
    command = "node",
    args = {
      vim.fn.expand("~/Development/tools/debuggers/vscode-js-debug/out/src/vsDebugServer.js"),
      "${port}"
    }
  }
}

dap.configurations.typescript = {
  {
    type = 'pwa-node',
    request = 'launch',
    name = 'Launch TS debugger',
    runtimeExecutable = 'tsx',
    program = '${file}',
    cwd = '${workspaceFolder}',
    sourceMaps = true,
    skipFiles = {
      "<node_internals>/**",
      "node_modules/**"
    }
  },

  {
    type = 'pwa-node',
    request = 'attach',
    name = 'Attach Node',
    address = '127.0.0.1',
    port = 9229,
    cwd = '${workspaceFolder}',
    sourceMaps = true,
    skipFiles = {
      "<node_internals>/**",
      "node_modules/**"
    }
  },

}

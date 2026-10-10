vim.keymap.set("n", "`", "<cmd>Yazi<CR>", {
  desc = "Open Yazi"
})

vim.keymap.set("n", "-", "<cmd>Telescope find_files<cr>", {
  desc = 'Open Telescope Find Files'
})

--[[ TODO: Fix debugging
vim.keymap.set("n", "<leader>oo", function()
    require("dap").continue()
end, {
    desc = "Debug - Start/continue debugging session"
})

vim.keymap.set("n", "<F10>", function()
    require("dap").step_into()
end, {
    desc = "Debug - Step Into"
})

vim.keymap.set("n", "<F11>", function()
    require("dap").step_over()
end, {
    desc = "Debug - Step Over"
})

vim.keymap.set("n", "<F12>", function()
    require("dap").step_out()
end, {
    desc = "Debug - Step Out"
})

vim.keymap.set("n", "<leader>bb", function()
    require("dap").toggle_breakpoint()
end, {
    desc = "Debug - Set breakpoint"
})

vim.keymap.set("n", "<leader>op", function()
    require("dap").toggle_breakpoint()
end, {
    desc = "Debug - End session"
})
]]

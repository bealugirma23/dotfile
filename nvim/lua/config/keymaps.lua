-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
-- Flutter Development keymaps

vim.keymap.set("n", "<leader>tf", "<cmd>FlutterRun<CR>", { desc = "Flutter Run" })
vim.keymap.set("n", "<leader>tv", "<cmd>FlutterDevices<CR>", { desc = "Flutter Devices" }) -- Changed to 'v' for deVices
vim.keymap.set("n", "<leader>tl", "<cmd>FlutterLogToggle<CR>", { desc = "Toggle Flutter Dev Log" })
vim.keymap.set("n", "<leader>to", "<cmd>FlutterOutlineToggle<CR>", { desc = "Toggle Flutter Outline" })
vim.keymap.set("n", "<leader>ti", "<cmd>FlutterInspectWidget<CR>", { desc = "Toggle Widget Inspector" })
vim.keymap.set("n", "<leader>td", "<cmd>FlutterVisualDebug<CR>", { desc = "Toggle Visual Debug" }) -- Keeps 'd' for Debug
vim.keymap.set("n", "<leader>tp", "<cmd>FlutterOpenDevTools<CR>", { desc = "Flutter Dev Tools" }) -- Keeps 'd' for Debug
vim.keymap.set("n", "<leader>th", "<cmd>FlutterReload<CR>", { desc = "Flutter Hot Reload" })
vim.keymap.set("n", "<leader>tH", "<cmd>FlutterRestart<CR>", { desc = "Flutter Hot Restart" })
vim.keymap.set("n", "<leader>tq", "<cmd>FlutterQuit<CR>", { desc = "Flutter Quit" })
-- other
vim.keymap.set("n", "<leader>tt", "<cmd>Todoist<cr>", { desc = "Launch Todoist" })
vim.keymap.set("n", "<leader>tr", "<cmd>Obsidian<CR>", { desc = "Flutter Quit" })
-- create a todo
vim.keymap.set("i", "<C-d>", "- [ ] -", { desc = "Insert markdown checkbox" })

--- Godot dev keymaps
-- Restart Godot debug session (quit current, restart fresh)
vim.keymap.set("n", "<leader>dR", function()
  -- Kill any running Godot game instance
  vim.fn.system("pkill -f 'godot --path'")
  vim.defer_fn(function()
    vim.cmd("GodotRunProject")
  end, 1000)
end, { desc = "Restart Godot Game" })

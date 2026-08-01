-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set
local del_map = vim.keymap.del

-- 1. 移除 LazyVim 默认 <leader><Tab> 内置快捷键（关键）
del_map("n", "<leader><Tab>[")
del_map("n", "<leader><Tab>]")
del_map("n", "<leader><Tab>f")
del_map("n", "<leader><Tab>l")
del_map("n", "<leader><Tab>o")
del_map("n", "<leader><Tab>d")

-- 2. 注册分组入口（必须要有，否则 space+tab 不会弹出菜单）
map("n", "<leader><Tab>", "", { desc = "Tabs" })

-- 3. 自定义 Tabpage 按键，完全按照你的需求
map("n", "<leader><Tab>c", "<cmd>tabclose<cr>", { desc = "Close Tab", silent = true })
map("n", "<leader><Tab>J", "<cmd>tabfirst<cr>", { desc = "First Tab", silent = true })
map("n", "<leader><Tab>L", "<cmd>tablast<cr>", { desc = "Last Tab", silent = true })
map("n", "<leader><Tab>C", "<cmd>tabonly<cr>", { desc = "Close Other Tabs", silent = true })
map("n", "<leader><Tab>j", "<cmd>tabprev<cr>", { desc = "Previous Tab", silent = true })
map("n", "<leader><Tab>k", "<cmd>tabnext<cr>", { desc = "Next Tab", silent = true })
-- New Tab 保持原有 <leader><Tab><Tab>，LazyVim原生保留，无需重写
map("n", "<leader><Tab>s", "<cmd>tabs<cr>", { desc = "Show Tabs List", silent = true })

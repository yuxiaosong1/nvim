-- 设置 Leader 键
vim.g.mapleader = ","
vim.g.maplocalleader = ","
-- 添加自定义键位映射
local map = vim.keymap.set

-- 插入模式映射
map("i", "jk", "<Esc>", { desc = "退出插入模式" })
map("i", "<leader>zj", "()<Left>", { desc = "插入括号" })
map("i", "<leader>zk", "{}<Left>", { desc = "插入花括号" })
map("i", "<leader>zh", "[]<Left>", { desc = "插入方括号" })
map("i", "<leader><", "<><Left>", { desc = "插入尖括号" })

-- 普通模式映射可以在这里添加
-- map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "查找文件" })

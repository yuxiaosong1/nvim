-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- 在 lua/plugins/clipboard.lua 中添加
return {
  {
    "ojroques/nvim-osc52",
    config = function()
      require("osc52").setup({
        max_length = 0, -- 无限制
        silent = false, -- 显示复制成功提示
      })

      vim.keymap.set("n", "<leader>y", require("osc52").copy_operator, { expr = true })
      vim.keymap.set("n", "<leader>yy", "<leader>y_", { remap = true })
      vim.keymap.set("v", "<leader>y", require("osc52").copy_visual)
    end,
  },
}

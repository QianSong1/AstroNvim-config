return {
  -- 1. 彗星效果光标 (Smear Cursor)
  {
    "sphamba/smear-cursor.nvim",
    event = "VeryLazy", -- 延迟加载，不影响启动速度
    opts = {                                -- Default  Range
      stiffness = 0.8,                      -- 0.6      [0, 1]
      trailing_stiffness = 0.6,             -- 0.45     [0, 1]
      stiffness_insert_mode = 0.7,          -- 0.5      [0, 1]
      trailing_stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
      damping = 0.95,                       -- 0.85     [0, 1]
      damping_insert_mode = 0.95,           -- 0.9      [0, 1]
      distance_stop_animating = 0.5,        -- 0.1      > 0
    },
  },

  -- 2. 丝滑鼠标滚动 (Neoscroll)
  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy", -- 延迟加载，不影响启动速度
    config = function()
      local neoscroll = require "neoscroll"
      neoscroll.setup {
        mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
        hide_cursor = false,           -- 滚动时隐藏光标
        stop_eof = true,               -- 滚动到文件末尾停止
        respect_scrolloff = false,     -- 滚动时是否尊重 scrolloff 设置
        cursor_scrolls_alone = true,   -- 光标是否可以独立滚动
        easing_function = "quadratic", -- 缓动函数：可以让滚动有加速和减速感
      }

      -- 丝滑滚轮滚动
      vim.keymap.set(
        { "n", "v", "x", "i" },
        "<ScrollWheelUp>",
        function() neoscroll.scroll(-0.1, { move_cursor = false, duration = 150 }) end
      )
      vim.keymap.set(
        { "n", "v", "x", "i" },
        "<ScrollWheelDown>",
        function() neoscroll.scroll(0.1, { move_cursor = false, duration = 150 }) end
      )
    end,
  },
}

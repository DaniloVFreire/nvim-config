return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim", -- required by telescope
    "MunifTanjim/nui.nvim",

    -- optinal
    "nvim-treesitter/nvim-treesitter",
    "rcarriga/nvim-notify",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    ---@type lc.lang
    ---Avalible langs: cpp, java, python, python3, c, csharp, javascript,
    ---typescript, php, swift, kotlin, dart, golang, ruby, scala, rust,
    ---racket, erlang, elixir, bash
    lang = "cpp",
    cache = {
      update_interval = 60 * 60 * 24 * 2, ---@type integer 2 days
    },
  },
}

return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = true,
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitgnored = false,
        visible = true,
      },
      hide_by_name = {
        ".git",
        ".DS_Store",
        "*.cpython-*",
        "__pycache__",
        ".neoconf*",
      },
    },
    window = {
      width = 25,
      auto_resize = true,
    },
  },
}

return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader><leader>",
        function()
          require("telescope.builtin").find_files({ path_display = { "truncate" } })
        end,
        desc = "find files (Root DIR)",
      },
      {
        "<leader>tc",
        function()
          require("telescope.builtin").help_tags()
        end,
        desc = "telescope help tags",
      },
    },
  },
}

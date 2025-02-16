-- TODO: make venv find conda and
-- stop logging to update version
-- even when i put regexp on opts
return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    { "mfussenegger/nvim-dap", config = function() end },
    "mfussenegger/nvim-dap-python", --optional
    { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
  },
  opts = {
    stay_on_this_version = true,
  },
  lazy = false,
  branch = "regexp", -- This is the regexp branch, use this for the new version
  config = function()
    require("venv-selector").setup({
      settings = {
        search = {
          my_venvs = {
            command = "fd python$ ~/Code",
          },
        },
        stay_on_this_version = true,
      },
    })
  end,
  keys = {
    { "<leader>vs", "<cmd>VenvSelect<cr>" },
  },
}

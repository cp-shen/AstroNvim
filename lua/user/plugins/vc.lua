return {
  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    opts = { diff_binaries = false },
  },

  {
    "TimUntersberger/neogit",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    opts = { integrations = { diffview = true } }
  }
}

return {
  n = {
        ["<C-q>"] = false,
        ["<leader><space>"] = { function() require("telescope.builtin").oldfiles() end, desc = "Find history" }
  },
  t = {
        ["<C-\\>"] = "<C-\\><C-n>",
  },
}

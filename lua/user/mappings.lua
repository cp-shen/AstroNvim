return {
  n = {
        ["<C-q>"] = false,
        ["<leader><space>"] = { function() require("telescope.builtin").oldfiles() end, desc = "Find history" },
        ["<leader>gg"] = { "<cmd>Neogit<cr>" },
        ["<leader>gH"] = { "<cmd>DiffviewFileHistory<cr>" },
        ["<leader>tl"] = false, --disable lazy git key
  },
  t = {
        ["<C-\\>"] = "<C-\\><C-n>",
        ["<C-h>"] = false,
        ["<C-j>"] = false,
        ["<C-k>"] = false,
        ["<C-l>"] = false,
  },
}

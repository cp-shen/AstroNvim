return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    local utils = require("astronvim.utils")

    opts.ensure_installed = utils.list_insert_unique(
      opts.ensure_installed, {
        "lua", "org", "nix"
      })

    opts.highlight.additional_vim_regex_highlighting =
        utils.list_insert_unique(
          opts.highlight.additional_vim_regex_highlighting, {
            "org"
          })
  end,
}

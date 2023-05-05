return {
  formatting = {
    format_on_save = {
      enabled = false,
      allow_filetypes = {},
      ignore_filetypes = {},
    },
    timeout_ms = 1000,
  },
  servers = {
    "lua_ls", "rust_analyzer"
  },
  setup_handlers = {
    rust_analyzer = function(_, opts)
      require("user.lsp-rust").setup_rt(opts)
    end,
  },
  config = { lua_ls = { settings = { Lua = require("user.lsp.lsp-lua").config } }, }
}

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
    "lua_ls", "rust_analyzer", "metals", "pyright", "nil_ls", "hls"
  },
  setup_handlers = {
    rust_analyzer = function(_, opts)
      require("user.lsp.lsp-rust").setup_rt(opts)
    end,
    metals = function(_, opts)
      require("user.lsp.lsp-metals").setup_metals(opts)
    end,
    hls = function(_, opts)
      require("user.lsp.lsp-haskell").setup_ht(opts)
    end
  },
  config = { lua_ls = { settings = { Lua = require("user.lsp.lsp-lua").config } }, }
}

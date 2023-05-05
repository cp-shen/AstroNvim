local M = {}

function M.setup_metals(server_opts)
  local api = vim.api
  local metals_config = require("metals").bare_config()

  metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()
  metals_config.init_options.statusBarProvider = "on"
  metals_config.settings = {
    showImplicitConversionsAndClasses = true,
    showImplicitArguments = true,
    useGlobalExecutable = true,
    -- testUserInterface = "Test Explorer",
    scalafmtConfigPath = vim.env["HOME"] .. "/.config/scalafmt/scalafmt.conf"
  }

  local dap = require("dap")

  dap.configurations.scala = {
    {
      type = "scala",
      request = "launch",
      name = "Run or Test File",
      metals = {
        runType = "runOrTestFile",
      },
    },
    {
      type = "scala",
      request = "launch",
      name = "Test Target",
      metals = {
        runType = "testTarget",
      },
    },
  }

  metals_config.on_attach = function(client, bufnr)
    server_opts.on_attach(client, bufnr)
    require("metals").setup_dap()
  end

  -- local map = vim.keymap.set
  -- map("n", "gd", vim.lsp.buf.definition)
  -- map("n", "K", vim.lsp.buf.hover)
  -- map("n", "gi", vim.lsp.buf.implementation)
  -- map("n", "gr", vim.lsp.buf.references)

  local nvim_metals_group = api.nvim_create_augroup("nvim-metals", { clear = true })
  api.nvim_create_autocmd("FileType", {
    pattern = { "scala", "sbt", "java" },
    callback = function()
      require("metals").initialize_or_attach(metals_config)
    end,
    group = nvim_metals_group,
  })
end

return M

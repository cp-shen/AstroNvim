return {
  {
    "nvim-orgmode/orgmode",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    lazy = false,
    opts = {
      org_agenda_files = { '~/org/*', '~/orgs/**/*' },
      org_default_notes_file = '~/org/file.org',
    },
    config = function(_, opts)
      require('orgmode').setup_ts_grammar()
      require('orgmode').setup(opts)
    end
  }
}

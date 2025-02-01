return {
  {
    "stevearc/conform.nvim",
    -- event = "BufWritePre",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      auto_install = true,
    },
  },

  {
    "github/copilot.vim",
    lazy = false,
  },

  {
    "rmagatti/auto-session",

    lazy = false,

    opts = {
      suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
    },

    keys = {
      { "<leader>sr", "<cmd>SessionSearch<CR>", desc = "Session search" },
      { "<leader>ss", "<cmd>SessionSave<CR>", desc = "Save session" },
      { "<leader>sa", "<cmd>SessionToggleAutoSave<CR>", desc = "Toggle autosave" },
    },

    session_lens = {
      load_on_setup = true,
      theme_conf = {},
      previewer = false,

      mappings = {
        delete_session = { "i", "<C-D>" },
        alternate_session = { "i", "<C-S>" },
        copy_session = { "i", "<C-Y>" },
      },

      session_control = {
        control_dir = vim.fn.stdpath "data" .. "/auto_session/",
        control_filename = "session_control.json",
      },
    },
  },
}

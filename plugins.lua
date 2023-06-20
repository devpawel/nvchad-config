local plugins = {
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    -- dependencies = {
    --   'treesitter-context',
    -- },
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",

        "rust",
      },
    },
  },
  -- {
  --   "nvim-treesitter/nvim-treesitter-context",
  --   name = 'treesitter-context',
  --   opts = {}
  -- },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "rust-analyzer",
        "typescript-language-server",
        "eslint-lsp",
        "html-lsp",
        "css-lsp",
        "stylua",
      },
    },
  },
}

return plugins

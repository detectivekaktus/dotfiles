return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local conf = require("lspconfig")
      local caps = require("cmp_nvim_lsp").default_capabilities()

      conf.pyright.setup({
        capabilities = caps
      })
      conf.gopls.setup({
        capabilities = caps
      })
      conf.lua_ls.setup({
        capabilities = caps,
        settings = {
          Lua = {
            completion = {
              keywordSnippet = "Disable"
            }
          }
        }
      })
      conf.denols.setup({
        capabilities = caps
      })

      -- Markups
      conf.html.setup({
        capabilities = caps
      })
      conf.cssls.setup({
        capabilities = caps
      })

      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.declaration, {})
      vim.keymap.set("n", "<leader>gD", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end
  },

  -- Autocompletion
  -- UI client
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
        -- Capabilities functionality
        "hrsh7th/cmp-nvim-lsp"
    },
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true })
        }),
        sources = cmp.config.sources(
          {
            { name = "nvim_lsp" },
          },
          {
            { name = "buffer" },
          })
      })
    end
  },
}

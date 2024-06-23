return {
  -- Set of capabilities for the language servers
  -- installed with the configuration. Go to the
  -- lua/plugins/lsp.lua to see the default capabilities
  -- passed to the language servers.
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  -- Snippets engine to connect everything together.
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip"
    }
  },
  -- Autocompletion UI client.
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
            { name = 'nvim_lsp' },
          },
          {
            { name = 'buffer' },
          })
      })
    end
  }
}

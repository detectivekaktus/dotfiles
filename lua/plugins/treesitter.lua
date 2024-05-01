return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true,
      -- To find the full list of programming languages, visit
      -- the https://github.com/nvim-treesitter/nvim-treesitter
      -- page and read the README file with listing of programming
      -- languages and their maintainters.
      ensure_installed = { "c", "cpp", "lua", "bash", "html", "css", "dockerfile", "go", "python", "java", "javascript", "json", },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

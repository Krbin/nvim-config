return {
 { "rose-pine/neovim", name = "rose-pine" },
{
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
      dependencies = { 'nvim-lua/plenary.nvim' },
},
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" , "php", "dockerfile"},
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
 },
  -- Add lspconfig
  {
    'neovim/nvim-lspconfig',
config = function()
-- Example configuration
local lspconfig = require('lspconfig')
-- Setup language servers here, for example:
lspconfig.pyright.setup{}
lspconfig.tsserver.setup{}

-- PHP Language Server setup
lspconfig.intelephense.setup{
  settings = {
    intelephense = {
      stubs = {
        "apache", "bcmath", "bz2", "calendar", "core", "curl", "date", "dom",
        "fileinfo", "filter", "ftp", "gd", "gettext", "hash", "iconv", "imap",
        "intl", "json", "ldap", "libxml", "mbstring", "mcrypt", "mysqli", "openssl",
        "pcntl", "pcre", "PDO", "pdo_mysql", "pdo_sqlite", "Phar", "posix", "readline",
        "recode", "Reflection", "regex", "session", "SimpleXML", "soap", "sockets",
        "sodium", "SPL", "sqlite3", "standard", "superglobals", "sysvmsg", "sysvsem",
        "sysvshm", "tokenizer", "xml", "xmlreader", "xmlwriter", "yaml", "zip", "zlib"
      },
      files = {
        maxSize = 5000000;
      };
    };
  };
}
end,
  },
}

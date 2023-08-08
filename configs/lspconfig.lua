local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig['hls'].setup {
  filetypes = { 'haskell', 'lhaskell', 'cabal', 'tidal' },
  single_file_support = true,
  root_dir = function ()
    return '/home/twojastaralinuksiara/.config/nvim/lua/custom/configs/haskell_conf'
  end,
  on_attach = on_attach,
  capabilities = capabilities,
}

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}

local ok, mason_lsp = pcall(require, 'mason-lspconfig')
if (not ok) then return end

mason_lsp.setup({automatic_installation = true})

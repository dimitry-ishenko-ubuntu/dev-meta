local found, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if found then
    vim.lsp.config("pylsp", {capabilities = cmp_nvim_lsp.default_capabilities()})
end

vim.lsp.enable("pylsp")

local prev_on_attach = vim.tbl_get(vim.lsp.config, "clangd", "on_attach")

vim.lsp.config("clangd", {
    cmd = {"clangd", "--compile-commands-dir=build", "--header-insertion=never"},
    root_markers = {
        "build",
        ".clangd",
        "configure.ac",
        ".git",
    },
    on_attach = function(client, bufnr)
        if prev_on_attach then
            prev_on_attach(client, bufnr)
        end
        vim.keymap.set("n", "gh", "<cmd>LspClangdSwitchSourceHeader<cr>", {buffer = bufnr})
    end
})

local found, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if found then
    vim.lsp.config("clangd", {capabilities = cmp_nvim_lsp.default_capabilities()})
end

vim.lsp.enable("clangd")

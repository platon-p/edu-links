local lspinstaller = require'nvim-lsp-installer'
local lspconfig = require'lspconfig'

lspinstaller.setup{
	--[[ensure_installed = {
		'pyright',                -- Python
		'sumneko_lua',            -- Lua
        'gopls',                  -- Go
        'clangd',                  -- C/C++
        'marksman'
	}]]
    ensure_installed = "all"
}

-- Возможности редактора
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Добавляем возможность использовать сниппеты
capabilities.textDocument.completion.completionItem.snippetSupport = true

for _, server in ipairs(lspinstaller.get_installed_servers()) do
    lspconfig[server.name].setup{
        flags = {
            debounce_text_changes = 150,
        },
        capabilities = require('cmp_nvim_lsp').default_capabilities()
    }
end

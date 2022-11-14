local cmp = require('cmp')

cmp.setup{
    autocomplete = false,
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			require'luasnip'.lsp_expand(args.body) -- Luasnip expand
		end,
	},

	-- Клавиши, которые будут взаимодействовать в nvim-cmp
	mapping = {
		-- Вызов меню автодополнения
		['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
		-- ['<CR>'] = cmp.config.disable,                      -- Я не люблю, когда вещи автодополняются на <Enter>
        -- go to definition
		['<C-y>'] = cmp.mapping.confirm({ select = true }), -- А вот на <C-y> вполне ок

		-- Используем <C-e> для того чтобы прервать автодополнение
		['<C-e>'] = cmp.mapping({
			i = cmp.mapping.abort(), -- Прерываем автодополнение
			c = cmp.mapping.close(), -- Закрываем автодополнение
		}),
		['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
		['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
	},

	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },                -- LSP 👄
		{ name = 'nvim_lsp_signature_help' }, -- Помощь при введении параметров в методах 🚁
		{ name = 'luasnip' },                 -- Luasnip 🐌
		-- { name = 'buffer' },                  -- Буфферы 🐃
		-- { name = 'path' },                    -- Пути 🪤
		-- { name = "emoji" },                   -- Эмодзи 😳
	}, {
	}),
}

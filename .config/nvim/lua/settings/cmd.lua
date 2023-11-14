-- ターミナルの設定
vim.api.nvim_create_autocmd({'TermOpen'}, {
	pattern = '*',
	command = 'startinsert',
})

-- ターミナルモードで行番号を非表示
vim.api.nvim_create_autocmd({'TermOpen'}, {
	pattern = '*',
	command = 'setlocal norelativenumber'
})
vim.api.nvim_create_autocmd({'TermOpen'}, {
	pattern = '*',
	command = 'setlocal nonumber'
})

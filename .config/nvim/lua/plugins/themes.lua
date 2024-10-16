return {
	'catppuccin/nvim',
	name = 'catppuccin',
	priority = 1000,
	event = "VimEnter",
	config = function()
		vim.cmd('colorscheme catppuccin-mocha')
	end
}

-- return {
--	'EdenEast/nightfox.nvim',
--	event = "VimEnter",
--	config = function()
--		vim.cmd('colorscheme nightfox')
--		vim.g['lightline'] = {colorscheme = 'nightfox'}
--	end
-- }

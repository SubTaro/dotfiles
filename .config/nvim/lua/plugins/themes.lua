return {
	'EdenEast/nightfox.nvim',
	event = "VimEnter",
	config = function()
		vim.cmd('colorscheme nightfox')
		vim.g['lightline'] = {colorscheme = 'nightfox'}
	end
}

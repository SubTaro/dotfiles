return {
	'lambdalisue/fern.vim',
	key = {
		{"<C-n>", ":Fern . -reveal=% -drawer -toggle -width=40<CR>", desc = "toggle fern"}
	},
	dependencies = {
		{'lambdalisue/nerdfont.vim'},
		{'ryanoasis/vim-devicons'},
		{
			'lambdalisue/fern-renderer-nerdfont.vim',
			config = function()
				vim.g['fern#renderer'] = "nerdfont"
			end
		},
	},
}

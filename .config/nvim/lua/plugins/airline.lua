return {
	'vim-airline/vim-airline',
	event = 'VimEnter',
	dependences = {
		{'vim-airline/vim-airline-themes'}
	},
	config = function()
		vim.g['airline#extensions#tabline#enabled'] = 1
	end
}

return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	config = function()
		require('lualine').setup{
			options = {
				theme = "catppuccin"
			}
		}
	end
}

-- return {
-- 	'vim-airline/vim-airline',
-- 	event = 'VimEnter',
-- 	dependences = {
-- 		{'vim-airline/vim-airline-themes'}
-- 	},
-- 	config = function()
-- 		vim.g['airline#extensions#tabline#enabled'] = 1
-- 	end
-- }

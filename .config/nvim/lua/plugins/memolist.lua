return {
	"glidenote/memolist.vim",
	event = { "BufReadPre", "BufNewFile" },
	keys = {
		{"<leader>mn", "<cmd>MemoNew<CR>"},
		{"<leader>ml", "<cmd>Telescope memo list<CR>"},
		{"<leader>mg", "<cmd>MemoGrep<CR>"},
	},
	config = function()
		vim.g["memolist_path"] = "~/.memolist/memo"
		vim.g["memolist_memo_suffix"] = "md"
		vim.g["memolist_fzf"] = 1
		vim.g["memolist_template_dir_path"] = "~/.memolist/memotemplates"
	end,
}

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

-- cmd
function is_docker_running(container_name)
	local handle = io.popen("docker ps --filter name=" .. container_name .. " --format '{{.Names}}'")
	local result = handle:read("*a")
	handle:close()
	return result:match(container_name) ~= nil
end

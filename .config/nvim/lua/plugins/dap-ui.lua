return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"mfussenegger/nvim-dap-python",
		"leoluz/nvim-dap-go",
	},
	config = function()
		require('dap-go').setup()
		local dapui = require('dapui')
		local dap = require('dap')
		-- 見た目の設定
		require("dapui").setup({
			icons = { expanded = "", collapsed = "" },
			layouts = {
				{
					elements = {
						{ id = "watches", size = 0.20 },
						{ id = "stacks", size = 0.20 },
						{ id = "breakpoints", size = 0.20 },
						{ id = "scopes", size = 0.40 },
					},
					size = 64,
					position = "right",
				},
				{
					elements = {
						"repl",
						"console",
					},
					size = 0.20,
					position = "bottom",
				},
			},
		})
		-- pythonの設定
		-- local venv = os.getenv("VIRTUAL_ENV")
		local venv = "~/.local/share/nvim/mason/packages/debugpy/venv"
		command = string.format("%s/bin/python", venv)

		require('dap-python').setup(command)
		dap.configurations.go = {
			{
				type = 'go',
				name = 'debug',
				request = 'launch',
				program = "${file}",
			},
			{
				type = 'go',
				name = 'run_mep',
				request = 'launch',
				program = "${file}",
				env = {
					STORAGE_EMULATOR_HOST = "localhost:4443",
					PUBSUB_EMULATOR_HOST  = "localhost:8681",
					SPANNER_EMULATOR_HOST = "localhost:9010",
					APP_ENV               = "local"
				},
			},
		}

		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close()
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close()
		end

		-- keymaps
		vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>", { silent = true })
		vim.keymap.set("n", "<F10>", ":lua require'dap'.step_over()<CR>", { silent = true })
		vim.keymap.set("n", "<F11>", ":lua require'dap'.step_into()<CR>", { silent = true })
		vim.keymap.set("n", "<F12>", ":lua require'dap'.step_out()<CR>", { silent = true })

		vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>", { silent = true })
		vim.keymap.set("n", "<leader>d", ":lua require'dapui'.toggle()<CR>", { silent = true })
		vim.keymap.set("n", "<leader><leader>df", ":lua require'dapui'.eval()<CR>", { silent = true })
	end

}

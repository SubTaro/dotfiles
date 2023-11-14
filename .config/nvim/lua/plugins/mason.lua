return {
	'williamboman/mason.nvim',
	cmd = {
		"Mason",
		"MasonInstall",
		"MasonUninstall",
		"MasonUninstallAll",
		"MasonLog",
		"MasonUpdate",
	  },
	event = {"WinNew", "WinLeave", "BufRead"},
	opts = {
		ui = {
			icons = {
				package_installed = "✓",
				package_uninstalled = "✗",
				package_pending = "⟳",
			},
		},
	},
	build = ":MasonUpdate",
}

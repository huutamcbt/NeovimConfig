local status_ok, mason = pcall(require,"mason");
if (not status_ok) then return end;

mason.setup({
	ui = {
		border = "double",
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

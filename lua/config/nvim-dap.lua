local status_ok_1, dap_vscode_js = pcall(require, "dap-vscode-js");
local status_ok_2, dap = pcall(require, "dap");

if (not status_ok_1) or (not status_ok_2) then return end

------------------------ Javascript -----------------------------

dap_vscode_js.setup({
	node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
	debugger_path = "C:/Users/ADMIN/AppData/Local/nvim-data/site/pack/packer/opt/vscode-js-debug", -- Path to vscode-js-debug installation.
	debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
	adapters = { "pwa-node" }, -- which adapters to register in nvim-dap
	-- log_file_path = "(stdpath cache)/dap_vscode_js.log" -- Path for file logging
	-- log_file_level = false -- Logging level for output to file. Set to false to disable file logging.
	-- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
})

for _, language in ipairs({ "typescript", "javascript" }) do
	dap.configurations[language] = {
		{
			{
				type = "pwa-node",
				request = "launch",
				name = "Launch file",
				program = "${file}",
				cwd = "${workspaceFolder}",
			},
			{
				type = "pwa-node",
				request = "attach",
				name = "Attach",
				processId = require("dap.utils").pick_process,
				cwd = "${workspaceFolder}",
			},
		},
	}
end

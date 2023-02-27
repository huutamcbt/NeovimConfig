local status_ok, glow= pcall(require, "glow")
if not status_ok then
	return
end

require("glow").setup({
	style = "dark",
	width = 120,
	glow_path = vim.fn.exepath("glow"),
	install_path = "C:/Users/ADMIN/AppData/Local/nvim-data",
})

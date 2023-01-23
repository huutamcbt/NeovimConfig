-- air-line
local g = vim.g
local fn = vim.fn
g.airline_powerline_fonts = 1

if not fn.exists('g.airline_symbols')
then
    g.airline_symbols = {}
end
g.airline_theme = "tomorrow"

-- unicode symbols
g.airline_left_sep = '»'
g.airline_left_sep = '▶'
g.airline_right_sep = '«'
g.airline_right_sep = '◀'
g.airline_symbols = {

	linenr = '␊',
	linenr = '␤',
	linenr = '¶',
	branch = '⎇',
	paste = 'ρ',
	paste = 'Þ',
	paste = '∥',
	whitespace = 'Ξ'

}
-- airline symbols
g.airline_left_sep = ''
g.airline_left_alt_sep = ''
g.airline_right_sep = ''
g.airline_right_alt_sep = ''
g.airline_symbols.branch = ''
g.airline_symbols.readonly = ''
g.airline_symbols.linenr = ''

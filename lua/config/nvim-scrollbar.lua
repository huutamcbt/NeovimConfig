local status_ok_1, tokyonight = pcall(require, "tokyonight");
local status_ok_2, scrollbar = pcall(require, "scrollbar");
if (not status_ok_1) or (not status_ok_2) then return end

local colors = require("tokyonight.colors").setup()

scrollbar.setup({
    handle = {
        color = colors.bg_highlight,
    },
    marks = {
        Search = { color = colors.orange },
        Error = { color = colors.error },
        Warn = { color = colors.warning },
        Info = { color = colors.info },
        Hint = { color = colors.hint },
        Misc = { color = colors.purple },
    }
})

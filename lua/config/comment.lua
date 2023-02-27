local status_ok, comment= pcall(require, "comment")
if not status_ok then
     return
end

require("Comment").setup()

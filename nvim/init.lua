require("stidi.init")
require("stidi.remap")
require("stidi.plugins")
require("stidi.base")

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('stidi.macos')
end
if is_win then
  require('stidi.windows')
end

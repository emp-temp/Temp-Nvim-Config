require('temp.base')
require('temp.highlights')
require('temp.maps')
require('temp.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('temp.macos')
end
if is_win then
  require('temp.windows')
end

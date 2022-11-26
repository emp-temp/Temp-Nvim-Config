local solarized = require 'solarized'

solarized.setup {
  transparent = true,
  theme = 'neovim',
  mode = 'dark',
  colors = function(c)
    local colors = {
      fg = c.cyan, -- override the default foreground color
      indigo = '#4B0082', -- new color
    }

    return colors
  end,
  highlights = function(colors)
    local highlights = {
      CmpItemKindTabnine = { fg = colors.magenta },
      CmpItemKindEmoji = { fg = colors.yellow },
      LineNr = { bg = solarized:is_transparent(colors.bg_alt) }, -- bg_alt if solarized is not transparent
      CursorLineNr = { fg = colors.indigo }, -- new color being used
    }

    return highlights
  end,
}

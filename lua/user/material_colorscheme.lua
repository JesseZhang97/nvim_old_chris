local status_ok, scheme = pcall(require, 'material')
if not status_ok then
  return
end
scheme.setup({

  contrast = {
    sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
    floating_windows = true, -- Enable contrast for floating windows
    line_numbers = false, -- Enable contrast background for line numbers
    sign_column = false, -- Enable contrast background for the sign column
    cursor_line = false, -- Enable darker background for the cursor line
    non_current_windows = true, -- Enable darker background for non-current windows
    popup_menu = true, -- Enable lighter background for the popup menu
  },

  italics = {
    comments = true, -- Enable italic comments
    keywords = true, -- Enable italic keywords
    functions = false, -- Enable italic functions
    strings = false, -- Enable italic strings
    variables = false, -- Enable italic variables
  },

  contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
    'terminal', -- Darker terminal background
    'packer', -- Darker packer background
    'qf', -- Darker qf list background
  },

  high_visibility = {
    lighter = true, -- Enable higher contrast text for lighter style
    darker = true, -- Enable higher contrast text for darker style
  },

  disable = {
    borders = false, -- Disable borders between verticaly split windows
    background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
    term_colors = false, -- Prevent the theme from setting terminal colors
    eob_lines = false, -- Hide the end-of-buffer lines
  },

  lualine_style = 'default',

  custom_highlights = {}, -- Overwrite highlights with your own
  -- colors.accent =			'#0089A1' -- 20% darkened #00BCD4
})

vim.cmd([[
try
  colorscheme material
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])

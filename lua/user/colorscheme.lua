vim.cmd([[
try
  let g:everforest_background = 'soft'
  let g:everforest_enable_italic = 1
  let g:everforest_better_performance = 1
  colorscheme everforest
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])

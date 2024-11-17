return function()
  -- -- require('neoscroll').setup()
  -- require('neoscroll').setup({
  --     easing_function = "quadratic",
  --     mappings = {'<C-u>', '<C-d>', '<C-y>', '<C-e>', 'zt', 'zz', 'zb'}
  -- })
  --
  -- local t = {}
  -- -- Syntax: t[keys] = {function, {function arguments}}
  -- -- Use the "sine" easing function
  -- t['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '350', [['sine']]}}
  -- t['<C-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '350', [['sine']]}}
  -- -- Use the "circular" easing function
  -- -- t['<C-b>'] = {'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '500', [['circular']]}}
  -- -- t['<C-f>'] = {'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '500', [['circular']]}}
  -- -- Pass "nil" to disable the easing animation (constant scrolling speed)
  -- t['<C-y>'] = {'scroll', {'-0.10', 'false', '100', nil}}
  -- t['<C-e>'] = {'scroll', { '0.10', 'false', '100', nil}}
  -- -- When no easing function is provided the default easing function (in this case "quadratic") will be used
  -- t['zt']    = {'zt', {'300'}}
  -- t['zz']    = {'zz', {'300'}}
  -- t['zb']    = {'zb', {'300'}}
  --
  -- require('neoscroll.config').set_mappings(t)

  neoscroll = require('neoscroll')
  local keymap = {
    ["<C-u>"] = function() neoscroll.ctrl_u({ duration = 250 }) end;
    ["<C-d>"] = function() neoscroll.ctrl_d({ duration = 250 }) end;
    ["<C-b>"] = function() neoscroll.ctrl_b({ duration = 450 }) end;
    ["<C-f>"] = function() neoscroll.ctrl_f({ duration = 450 }) end;
    ["<C-y>"] = function() neoscroll.scroll(-0.1, { move_cursor=false; duration = 100 }) end;
    ["<C-e>"] = function() neoscroll.scroll(0.1, { move_cursor=false; duration = 100 }) end;
    ["zt"]    = function() neoscroll.zt({ half_win_duration = 250 }) end;
    ["zz"]    = function() neoscroll.zz({ half_win_duration = 250 }) end;
    ["zb"]    = function() neoscroll.zb({ half_win_duration = 250 }) end;
  }
  local modes = { 'n', 'v', 'x' }
  for key, func in pairs(keymap) do
    vim.keymap.set(modes, key, func)
  end
end

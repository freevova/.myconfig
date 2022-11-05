return function()
  require('leap').add_default_mappings()
  require('flit').setup({})
  require('leap-spooky').setup({})
end

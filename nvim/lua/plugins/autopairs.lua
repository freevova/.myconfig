return function()
  local npairs = require("nvim-autopairs")
  npairs.setup()

  local endwise = require("nvim-autopairs.ts-rule").endwise
  npairs.add_rules(
    {
      endwise('then$', 'end', 'lua', nil),
      endwise(" do$", "end", "elixir", nil)
    }
  )
end

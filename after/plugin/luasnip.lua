local ls = require("luasnip")

require("luasnip.loaders.from_vscode").lazy_load()

vim.keymap.set({"i", "s"}, "<c-j>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, {silent = true})

vim.keymap.set({"i", "s"}, "<c-k>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, {silent = true})

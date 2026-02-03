function Header(el)
  local modified = false
  local new_content = {}

  for i, inline in ipairs(el.content) do
    if inline.t == "Emph" then
      local text = pandoc.utils.stringify(inline)
      local latex = '\\scripture{«' .. text .. '»}'
      table.insert(new_content, pandoc.RawInline("latex", latex))
      modified = true
    else
      table.insert(new_content, inline)
    end
  end

  if modified then
    el.content = new_content
  end

  return el
end

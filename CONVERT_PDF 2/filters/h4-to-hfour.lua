function Header(el)
  -- Only convert H4
  if el.level == 4 then
    local text = pandoc.utils.stringify(el.content)
    return pandoc.RawBlock("latex", "\\hfour{" .. text .. "}")
  end
end

function Emph(el)
  if #el.c == 1 and el.c[1].t == "Str" then
    local text = el.c[1].text
    return pandoc.RawInline("latex", "\\scripture{«" .. text .. "»}")
  end
  return el
end

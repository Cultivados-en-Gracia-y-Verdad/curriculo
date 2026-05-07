function Inlines(inlines)
  local result = pandoc.List()
  local buffer = pandoc.List()
  local inside = false

  for i = 1, #inlines do
    local el = inlines[i]

    if el.t == "Str" and el.text:match("%[%[") then
      inside = true
      local clean = el.text:gsub("^%[%[", "")
      buffer:insert(pandoc.Str(clean))
    elseif inside and el.t == "Str" and el.text:match("%]%]") then
      inside = false
      local clean = el.text:gsub("%]%]$", "")
      buffer:insert(pandoc.Str(clean))
      local text = pandoc.utils.stringify(buffer)
      result:insert(pandoc.RawInline("latex", "\\scripture{" .. text .. "}"))
      buffer = pandoc.List()
    elseif inside then
      buffer:insert(el)
    else
      result:insert(el)
    end
  end

  -- If unmatched [[... (just copy raw)
  if inside then
    for _, el in ipairs(buffer) do
      result:insert(el)
    end
  end

  return result
end

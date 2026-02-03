
function Header(el)
  local stringify = pandoc.utils.stringify
  local function convert_starred_text(inlines)
    local result = pandoc.List:new()
    local buffer = {}
    local inside = false

    for i, inline in ipairs(inlines) do
      if inline.t == "Str" and inline.text == "\*" then
        if inside then
          local text = table.concat(buffer, " ")
          result:insert(pandoc.RawInline("latex", "\emph{\scripture{«" .. text .. "»}}"))
          buffer = {}
        end
        inside = not inside
      elseif inside then
        table.insert(buffer, stringify(inline))
      else
        result:insert(inline)
      end
    end
    return result
  end

  el.content = convert_starred_text(el.content)
  return el
end

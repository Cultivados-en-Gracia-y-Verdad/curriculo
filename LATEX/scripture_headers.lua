
function Header(el)
  local new_content = {}

  for _, inline in ipairs(el.content) do
    if inline.t == "Emph" then
      local text = pandoc.utils.stringify(inline)

      -- Only wrap single-word emphasis
      if not text:match("%s") then
        table.insert(new_content,
          pandoc.RawInline("latex", "\\scripture{«" .. text .. "»}")
        )
      else
        -- Leave multi-word italics alone
        table.insert(new_content, inline)
      end
    else
      table.insert(new_content, inline)
    end
  end

  el.content = new_content
  return el
end

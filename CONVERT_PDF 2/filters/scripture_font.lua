-- Replace literal *text* with \scripture{«text»} inside H5 headers only

function Header(el)
  if el.level ~= 5 then
    return el
  end

  for i, inline in ipairs(el.content) do
    if inline.t == "Str" then
      local s = inline.text
      local inner = s:match("^%*(.+)%*$")
      if inner then
        el.content[i] = pandoc.RawInline(
          "latex",
          "\\scripture{«" .. inner .. "»}"
        )
      end
    end
  end

  return el
end

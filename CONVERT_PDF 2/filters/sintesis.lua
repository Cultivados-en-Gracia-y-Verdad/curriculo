function Header(el)
  -- Only target level-2 headers
  if el.level == 2 then
    local title = pandoc.utils.stringify(el.content)

    if title == "En Síntesis" then
      return {
        pandoc.RawBlock("latex", "\\begin{sintesis}"),
        el,
        pandoc.RawBlock("latex", "\\end{sintesis}")
      }
    end
  end
end

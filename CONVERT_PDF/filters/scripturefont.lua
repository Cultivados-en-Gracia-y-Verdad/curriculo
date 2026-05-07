local last_header = nil

function Header(el)
  if el.level == 3 then
    last_header = el
  else
    last_header = nil
  end
  return el
end

function Para(el)
  if last_header and is_all_italic(el.content) then
    last_header = nil
    return pandoc.RawBlock("latex",
      "\\begin{verseblock}\n\\textit{" ..
      stringify_content(el.content) ..
      "}.\n\\end{verseblock}")
  end
  last_header = nil
  return el
end

-- Utility: check if entire paragraph is italic
function is_all_italic(inlines)
  for _, inline in ipairs(inlines) do
    if inline.t == "Str" then
      return false
    elseif inline.t == "Emph" then
      -- ok
    elseif inline.t == "Space" or inline.t == "SoftBreak" then
      -- ok
    else
      return false
    end
  end
  return true
end


-- Utility: join inline content into plain text with basic spacing
function stringify_content(inlines)
  local buffer = {}
  for _, inline in ipairs(inlines) do
    if inline.t == "Str" then
      table.insert(buffer, inline.text)
    elseif inline.t == "Space" or inline.t == "SoftBreak" then
      table.insert(buffer, " ")
    elseif inline.t == "Emph" then
      table.insert(buffer, stringify_content(inline.c))
    end
  end
  return table.concat(buffer):gsub("^%s+", ""):gsub("%s+$", "")
end

-- anchorblock.lua
function Pandoc(doc)
  local out = {}
  local i = 1

  while i <= #doc.blocks do
    local b = doc.blocks[i]

    -- Anchor = Header level 4
    if b.t == "Header" and b.level == 4 then
      local title = pandoc.utils.stringify(b.content)
      table.insert(out, pandoc.RawBlock("latex",
        "\\begin{anchorblock}{" .. title .. "}"))

      i = i + 1

      -- Collect everything until next Header level <= 4
      while i <= #doc.blocks do
        local nb = doc.blocks[i]

        if nb.t == "Header" and nb.level <= 4 then
          break
        end

        table.insert(out, nb)
        i = i + 1
      end

      table.insert(out, pandoc.RawBlock("latex", "\\end{anchorblock}"))
    else
      table.insert(out, b)
      i = i + 1
    end
  end

  return pandoc.Pandoc(out, doc.meta)
end

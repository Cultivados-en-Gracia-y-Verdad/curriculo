function Pandoc(doc)
  local out = {}
  local blocks = doc.blocks
  local i = 1

  while i <= #blocks do
    local blk = blocks[i]

    -- H3 header
    if blk.t == "Header" and blk.level == 3 then
      -- emit the H3 header itself
      table.insert(out, blk)

      -- open the left-rule block
      table.insert(out, pandoc.RawBlock("latex", "\\begin{hthreecontent}"))

      i = i + 1

      -- collect everything until next H3 or higher
      while i <= #blocks do
        local nextblk = blocks[i]
        if nextblk.t == "Header" and nextblk.level <= 3 then
          break
        end
        table.insert(out, nextblk)
        i = i + 1
      end

      -- close the left-rule block
      table.insert(out, pandoc.RawBlock("latex", "\\end{hthreecontent}"))
    else
      table.insert(out, blk)
      i = i + 1
    end
  end

  doc.blocks = out
  return doc
end

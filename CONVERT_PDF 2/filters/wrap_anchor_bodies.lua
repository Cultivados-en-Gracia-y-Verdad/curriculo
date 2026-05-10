-- wrap_anchor_bodies.lua
-- Wrap all content after H4 into a LaTeX environment until the next heading

function Pandoc(doc)
  local blocks = doc.blocks
  local new_blocks = {}
  local i = 1

  while i <= #blocks do
    local blk = blocks[i]
    
    if blk.t == "Header" and blk.level == 4 then
      -- Push the H4 header itself
      table.insert(new_blocks, blk)
      i = i + 1

      -- Gather all blocks under this H4
      local anchor_body = {}

      while i <= #blocks do
        local b = blocks[i]
        if b.t == "Header" and b.level <= 4 then
          break
        end
        table.insert(anchor_body, b)
        i = i + 1
      end

      -- Wrap the body under a raw environment
      table.insert(new_blocks, pandoc.RawBlock("latex", "\\begin{anchorbody}"))
      for _, b in ipairs(anchor_body) do
        table.insert(new_blocks, b)
      end
      table.insert(new_blocks, pandoc.RawBlock("latex", "\\end{anchorbody}"))

    else
      table.insert(new_blocks, blk)
      i = i + 1
    end
  end

  return pandoc.Pandoc(new_blocks, doc.meta)
end

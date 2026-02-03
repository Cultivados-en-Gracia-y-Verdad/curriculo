function DefinitionList(el)
  local blocks = {}

  for index, item in ipairs(el.content) do
    local term = pandoc.utils.stringify(item[1])
    local contents = item[2]

    io.stderr:write("🧪 Term: " .. term .. "\n")
    io.stderr:write("🧪 Contents block count: " .. tostring(#contents) .. "\n")

    -- Always emit begin
    table.insert(blocks, pandoc.RawBlock("latex", "\\begin{definitionbox}{" .. term .. "}"))

    -- Add contents or warning
    if #contents > 0 then
      for _, b in ipairs(contents) do
        table.insert(blocks, b)
      end
    else
      table.insert(blocks, pandoc.Para{pandoc.Str("⚠️ Empty definition for " .. term)})
    end

    -- Always emit closing block no matter what
    table.insert(blocks, pandoc.RawBlock("latex", "\\end{definitionbox}"))
  end

  return pandoc.Blocks(table.unpack(blocks))
end

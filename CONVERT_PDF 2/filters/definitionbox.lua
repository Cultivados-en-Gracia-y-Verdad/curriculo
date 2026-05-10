-- definitionbox_from_colon.lua
function DefinitionList(el)
  local blocks = {}

  for _, item in ipairs(el.content) do
    local term_inlines = item[1]          -- The term, e.g., "Justification"
    local definitions = item[2]           -- List of blocks for this term

    local term_str = pandoc.utils.stringify(term_inlines)
    local def_block = definitions[1][1]    -- First block of first definition
    local def_str = pandoc.utils.stringify(def_block)

    -- Compose LaTeX definitionbox
    table.insert(blocks, pandoc.RawBlock("latex",
      "\\begin{center}\n\\begin{definitionbox}{" .. term_str .. "}\n" ..
      def_str .. "\n" ..
      "\\end{definitionbox}\n\\end{center}"))
  end

  return blocks
end

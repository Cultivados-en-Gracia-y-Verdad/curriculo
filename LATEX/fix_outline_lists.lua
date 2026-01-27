local list_depth = 0

function OrderedList(el)
  list_depth = list_depth + 1

  local label_formats = {
    [1] = "\\arabic*.",
    [2] = "\\alph*)",
    [3] = "\\arabic*)",
    [4] = "\\roman*.",
  }

  local label = label_formats[list_depth] or "\\arabic*."
  local opts = string.format("[label=%s]", label)

  local result = {
    pandoc.RawBlock("latex", "\\begin{enumerate}" .. opts)
  }

  for _, item in ipairs(el.content) do
    table.insert(result, pandoc.RawBlock("latex", "\\item"))
    for _, block in ipairs(item) do
      table.insert(result, block)
    end
  end

  table.insert(result, pandoc.RawBlock("latex", "\\end{enumerate}"))
  list_depth = list_depth - 1
  return result
end
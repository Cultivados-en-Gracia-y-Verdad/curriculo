
-- fix_outline_lists.lua
-- Ensures nested outlines are valid even with minor Markdown mistakes.
-- Requires: Pandoc +fancy_lists extension

function OrderedList(el)
  -- Fix empty items (lonely \item)
  local fixed_items = {}
  for _, item in ipairs(el.content) do
    if #item == 0 then
      table.insert(fixed_items, {pandoc.Plain{pandoc.Str("•")}})
    else
      table.insert(fixed_items, item)
    end
  end

  -- Return same list with cleaned items
  return pandoc.OrderedList(fixed_items, el.attributes)
end

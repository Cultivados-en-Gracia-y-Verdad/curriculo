local last_header_level = nil
local writer = require("pandoc.utils").writer

function Header(el)
  last_header_level = el.level
  return el
end

function Para(el)
  if last_header_level then
    local env = ({
      "paraHone",
      "paraHtwo",
      "paraHthree",
      "paraHfour",
      "paraHfive"
    })[last_header_level]

    if env then
      local content = pandoc.write(pandoc.Pandoc({el}), "latex")
      return pandoc.RawBlock("latex", "\\begin{" .. env .. "}" .. content .. "\\end{" .. env .. "}")
    end
  end
  return el
end

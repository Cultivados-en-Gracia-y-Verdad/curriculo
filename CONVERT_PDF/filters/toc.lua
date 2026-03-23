function Div(el)
  if el.classes:includes("toc") then
    return pandoc.RawBlock("latex", [[
\setcounter{tocdepth}{1}
\tableofcontents
\clearpage
]])
  end
end
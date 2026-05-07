-- ============================================
-- TITLE + SUBTITLE ONLY
-- ============================================

local function escape_latex(str)
  return str:gsub("([%%#&{}])", "\\%1")
end


function Div(el)
  if el.classes:includes("title") then
    return pandoc.RawBlock("latex", [[
\newpage
\begin{center}
  {\Huge\bfseries ]] .. escape_latex(pandoc.utils.stringify(el.content)) .. [[}
\end{center}
]])
  
  elseif el.classes:includes("subtitle") then
    return pandoc.RawBlock("latex", [[
\vspace{-0.8em}
\begin{center}
  {\large\itshape ]] .. escape_latex(pandoc.utils.stringify(el.content)) .. [[}
\end{center}
]])
  end

  return nil
end
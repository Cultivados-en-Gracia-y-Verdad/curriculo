function Div(el)
  if el.classes:includes("title") then
    return pandoc.RawBlock("latex", [[
\newpage
\begin{center}
  {\Huge\bfseries ]] .. pandoc.utils.stringify(el.content) .. [[}
\end{center}
]])
  elseif el.classes:includes("subtitle") then
    return pandoc.RawBlock("latex", [[
\vspace{-0.8em}
\begin{center}
  {\large\itshape ]] .. pandoc.utils.stringify(el.content) .. [[}
\end{center}
]])
  end
end

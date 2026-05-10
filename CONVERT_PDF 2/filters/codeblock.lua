function CodeBlock(el)
  return pandoc.RawBlock(
    "latex",
    "\\begin{rootsblock}\n" .. el.text .. "\n\\end{rootsblock}"
  )
end
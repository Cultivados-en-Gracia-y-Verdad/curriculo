local after_headingfive = false

function RawBlock(el)
  if el.format == "latex" and el.text:match("\\headingfive") then
    after_headingfive = true
  end
end

function BulletList(el)
  if after_headingfive then
    after_headingfive = false
    return {
      pandoc.RawBlock("latex", "\\begin{commentlist}"),
      pandoc.BulletList(el.content),
      pandoc.RawBlock("latex", "\\end{commentlist}")
    }
  end
end

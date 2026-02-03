function RawBlock(el)
  if el.format == "tex" then
    -- Remove Pandoc-injected enumerate label redefinitions
    el.text = el.text:gsub("\\def\\labelenum[ivx]+%b{}", "")
  end
  return el
end

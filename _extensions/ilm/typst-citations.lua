function Cite(cite)
  local citations = {}
  for i, citation in ipairs(cite.citations) do
    table.insert(citations, "<" .. citation.id .. ">")
  end
  return pandoc.RawInline('typst', "#cite(" .. table.concat(citations, ", ") .. ")")
end
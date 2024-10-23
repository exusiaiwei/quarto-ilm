function Meta(m)
  if m.bibliography then
    m.bibliography_file = m.bibliography
    m.bibliography = nil
  end
  return m
end
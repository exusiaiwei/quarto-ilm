#show: quarto-ilm.with(
  $if(title)$
  title: "$title$",
  $endif$
  $if(author)$
  author: "$author$",
  $endif$
  $if(date)$
  date: "$date$",
  $endif$
  $if(abstract)$
  abstract: [$abstract$],
  $endif$
  $if(bibliography)$
  bibliography-file: "$bibliography$",
  $endif$
  $if(biblio-style)$
  bibliography-style: "$biblio-style$",
  $endif$
  $if(paper-size)$
  paper-size: "$paper-size$",
  $endif$
  $if(preface)$
  preface: [$preface$],
  $endif$
  $if(table-of-contents)$
  table-of-contents: $table-of-contents$,
  $endif$
  $if(chapter-pagebreak)$
  chapter-pagebreak: $chapter-pagebreak$,
  $endif$
  $if(external-link-circle)$
  external-link-circle: $external-link-circle$,
  $endif$
  $if(figure-index)$
  figure-index: $figure-index$,
  $endif$
  $if(table-index)$
  table-index: $table-index$,
  $endif$
  $if(listing-index)$
  listing-index: $listing-index$,
  $endif$
)
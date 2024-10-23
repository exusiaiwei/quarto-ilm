// Workaround for the lack of an `std` scope.
#let std-bibliography = bibliography
#let std-smallcaps = smallcaps
#let std-upper = upper

// Overwrite the default `smallcaps` and `upper` functions with increased spacing between
// characters. Default tracking is 0pt.
#let smallcaps(body) = std-smallcaps(text(tracking: 0.6pt, body))
#let upper(body) = std-upper(text(tracking: 0.6pt, body))

// Colors used across the template.
#let stroke-color = luma(200)
#let fill-color = luma(250)

#let quarto-ilm(
  title: none,
  subtitle: none,
  short-title: none,
  author: none,
  authors: (),
  affiliations: (),
  date: none,
  date-format: "[month repr:long] [day padding:zero], [year repr:full]",
  abstract: none,
  keywords: (),
  bibliography-file: none,
  bibliography-style: none,
  paper-size: "a4",
  preface: none,
  table-of-contents: none,
  chapter-pagebreak: true,
  external-link-circle: true,
  figure-index: (enabled: false, title: ""),
  table-index: (enabled: false, title: ""),
  listing-index: (enabled: false, title: ""),
  body,
) = {
  // Set document metadata and global styles
  set document(title: title, author: author)
  set text(font: ("Libertinus Serif", "Linux Libertine"), size: 12pt)
  set page(
    paper: paper-size,
    margin: (bottom: 1.75cm, top: 2.25cm),
    footer: context {
      let i = counter(page).at(here()).first()
      let is-odd = calc.odd(i)
      let aln = if is-odd { right } else { left }
      let target = heading.where(level: 1)
      if query(target).any(it => it.location().page() == i) {
        return align(aln)[#i]
      }
      let before = query(target.before(here()))
      if before.len() > 0 {
        let current = before.last()
        let gap = 1.75em
        let chapter = upper(text(size: 0.68em, current.body))
        if current.numbering != none {
          if is-odd {
            align(aln)[#chapter #h(gap) #i]
          } else {
            align(aln)[#i #h(gap) #chapter]
          }
        }
      }
    },
  )
  set par(leading: 0.7em, justify: true, linebreaks: "optimized")
  set heading(numbering: "1.")

  // Configure raw text display
  show raw: set text(font: ("Iosevka", "Fira Mono"), size: 9pt)

  // Configure paragraph properties
  show par: set block(spacing: 1.35em)

  // Add vertical space after headings
  show heading: it => {
    it
    v(2%, weak: true)
  }

  // Do not hyphenate headings
  show heading: set text(hyphenate: false)

  // Show a small maroon circle next to external links
  if external-link-circle {
    show link: it => {
      it
      if type(it.dest) != label {
        sym.wj
        h(1.6pt)
        sym.wj
        super(box(height: 3.8pt, circle(radius: 1.2pt, stroke: 0.7pt + rgb("#993333"))))
      }
    }
  }

  // Configure equation numbering
  set math.equation(numbering: "(1)")

  // Display inline code in a small box
  show raw.where(block: false): box.with(
    fill: fill-color.darken(2%),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )

  // Display block code with padding
  show raw.where(block: true): block.with(
    inset: (x: 5pt),
  )

  // Table styles
  show figure.where(kind: table): set block(breakable: true)
  set table(
    inset: 7pt,
    stroke: (0.5pt + stroke-color)
  )
  show table.cell.where(y: 0): smallcaps

  // Start document content
  {
    // Cover page
    page(align(left + horizon, block(width: 90%)[
      #let v-space = v(2em, weak: true)
      #text(3em)[*#title*]
      #v-space
      #text(1.6em, author)
      #if abstract != none {
        v-space
        block(width: 80%)[
          #par(leading: 0.78em, justify: true, linebreaks: "optimized", abstract)
        ]
      }
      #if date != none {
        v-space
        if type(date) == datetime {
          text(date.display(date-format))
        } else if type(date) == str {
          text(date)
        } else {
          text(date.toString())
        }
      }
    ]))

    // Preface
    if preface != none {
      page(preface)
    }

    // Table of contents
    if table-of-contents != none {
      table-of-contents
    }

    // Main content
    show heading.where(level: 1): it => {
      if chapter-pagebreak { colbreak(weak: true) }
      it
    }
    body

    // Bibliography
    if bibliography != none {
      pagebreak()
      show std-bibliography: set text(0.85em)
      // Use default paragraph properties for bibliography.
      show std-bibliography: set par(leading: 0.65em, justify: false, linebreaks: auto)
      bibliography
    }


    // Indices
    if figure-index.enabled or table-index.enabled or listing-index.enabled {
      pagebreak()
      show outline: set heading(outlined: true)
      if figure-index.enabled { outline(title: figure-index.title, target: figure.where(kind: image)) }
      if table-index.enabled { outline(title: table-index.title, target: figure.where(kind: table)) }
      if listing-index.enabled { outline(title: listing-index.title, target: figure.where(kind: raw)) }
    }
  }
}

// This function formats its `body` (content) into a blockquote.
#let blockquote(body) = {
  block(
    width: 100%,
    fill: fill-color,
    inset: 2em,
    stroke: (y: 0.5pt + stroke-color),
    body
  )
}
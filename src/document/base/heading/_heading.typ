#let _heading(body) = {
  set heading(numbering: (..rest) => {
    let numbers = rest.pos()
    if (numbers.len() >= 6) {
      numbers = numbers.filter(number => number != 0)
    }
    numbering("1.", ..numbers)
}, outlined: false)

  show heading: it => block(spacing: 1.621em)[#it]
  show heading: set text(1.1em, weight: "regular", style: "italic")
  show heading.where(body: []): pagebreak()

  show heading.where(level: 1): it => block(spacing: 2.5em)[#upper(it)]
  show heading.where(level: 1): set heading(numbering: none)
  show heading.where(level: 1): set align(center)
  show heading.where(level: 1): set text(0.75em, weight: "bold", style: "normal")

  show heading.where(level: 2): it => block(spacing: 2em)[#it]
  show heading.where(level: 2): set text(0.9em, weight: "bold", style: "normal")
  show heading.where(level: 2): set heading(level: 1, numbering: none, outlined: true)

  show heading.where(level: 3): it => block(spacing: 2em)[#it]
  show heading.where(level: 3): set text(1em, weight: "bold", style: "normal")
  show heading.where(level: 3): set heading(level: 1, outlined: true)

  show heading.where(level: 4): it => block(spacing: 2.2em)[#it]
  show heading.where(level: 4): set text(1em, weight: "bold", style: "normal")
  show heading.where(level: 4): set heading(level: 2, outlined: true)

  show heading.where(level: 5): it => block(spacing: 1.621em)[#it]
  show heading.where(level: 5): set text(1em)
  show heading.where(level: 5): set heading(level: 3, outlined: true)

  set outline(title: none, indent: (level) => level * 1.2em)
  set outline.entry(fill: repeat(".", gap: 0em))

  show outline.entry: set block(spacing: 0.5em)
  show outline.entry.where(level: 1): set block(spacing: 1em)
  show outline.entry.where(level: 1): it => if (it.element.func() == heading) {
    link(it.element.location(), it.indented(it.prefix(), upper(it.inner())))
  } else {
    it
  }

  show outline.entry.where(level: 3): set text(style: "italic")

  body
}
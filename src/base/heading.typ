#let supplemental(body, spacing: none) = {
  if (spacing == none) {
    spacing = 2.35em
  }
  
  show std.heading.where(level: 1): heading => upper(heading)
  show std.heading.where(level: 1): set std.heading(numbering: none, outlined: false)
  show std.heading.where(level: 1): set align(center)
  show std.heading.where(level: 1): set text(1em, weight: "bold", style: "normal")
  show std.heading.where(level: 1): set block(spacing: spacing)
  show std.heading.where(level: 1): set block(inset: (top: 0.25em))

  body
}

#let content(body) = {
  set std.heading(
    numbering: (..rest) => numbering("1.", ..rest.pos().filter(number => number != 0)),
    outlined: false
  )

  show std.heading: set block(spacing: 1.5em)
  show std.heading: set text(1.1em, weight: "regular", style: "italic")
  
  show std.heading.where(body: []): pagebreak()
  show std.heading.where(level: 1).or(std.heading.where(level: 2)): heading => [#pagebreak() #upper(heading)]
  
  show std.heading.where(level: 1): set block(spacing: 1.9em)
  show std.heading.where(level: 1): set text(0.77em, weight: "bold", style: "normal")
  show std.heading.where(level: 1): set std.heading(numbering: none, outlined: true)

  show std.heading.where(level: 2): set block(spacing: 1.95em)
  show std.heading.where(level: 2): set text(0.9em, weight: "bold", style: "normal")
  show std.heading.where(level: 2): set std.heading(level: 1, outlined: true)

  show std.heading.where(level: 3): set block(spacing: 1.925em)
  show std.heading.where(level: 3): set text(1.1em, weight: "bold", style: "normal")
  show std.heading.where(level: 3): set std.heading(level: 2, outlined: true)
  
  show std.heading.where(level: 4): set std.heading(level: 3, outlined: true)

  body
}
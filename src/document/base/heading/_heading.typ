#let _heading(body) = {
  set heading(numbering: (..rest) => {
    let numbers = rest.pos()
    if (numbers.len() > 1) {
      numbers = numbers.slice(2)
    }
    numbering("1.", ..numbers)
  }, outlined: false)

  show heading: it => {
    if (it.numbering == none) {
      return it
    }

    if (it.body == []) {
      return pagebreak()
    }
    
    let (body, level, ..arguments) = it.fields()
    if (level == 1) {
      set align(center)
      set text(size: 0.8em)
      body = upper(body)

      block(body, spacing: 2.5em)
    } else if (level == 2) {
      set text(size: 0.7em)
      body = upper(body)

      block(
        heading(body, ..arguments, numbering: none, level: 1, outlined: true),
        spacing: 2.75em
      )
    } else if (level == 3) {
      set text(size: 0.85em)
      body = counter(heading).display() + " " + upper(body)

      block(
        heading(body, ..arguments, numbering: none, level: 1, outlined: true),
        spacing: 2.75em
      )
    } else if (level == 4) {
      set text(size: 1em)
      body = counter(heading).display() + " " + body

      block(
        heading(body, ..arguments, numbering: none, level: 2, outlined: true),
        spacing: 2.4em
      )
    } else if (level >= 5) {
      set text(size: 1.083em)
      body = counter(heading).display() + " " + body

      block(
        heading(text(body, style: "italic", weight: "regular"), ..arguments, numbering: none, level: 3, outlined: true),
        spacing: 1.666em
      )
    }
  }
  
  body
}
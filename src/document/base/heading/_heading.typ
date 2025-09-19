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
    
    let level = it.level
    if (level == 1) {
      set align(center)
      set text(size: 0.8em)

      block(upper(it.body), spacing: 2.5em)
    } else if (level == 2) {
      let (body, ..arguments) = it.fields()

      set text(size: 0.7em)
      block(heading(upper(body), ..arguments, numbering: none, level: 1, outlined: true), spacing: 2.75em)
    } else if (level == 3) {
      let (body, ..arguments) = it.fields()
      
      set text(size: 0.85em)
      block(heading(counter(heading).display() + " " + upper(it.body), ..arguments, numbering: none, level: 1, outlined: true), spacing: 2.75em)
    } else if (level == 4) {
      let (body, ..arguments) = it.fields()
      
      set text(size: 1em)
      block(heading(counter(heading).display() + " " + it.body, ..arguments, numbering: none, level: 2, outlined: true), spacing: 2.4em)
    } else if (level >= 5) {
      let (body, ..arguments) = it.fields()
      
      set text(size: 1.083em)
      block(heading(text(counter(heading).display() + " " + it.body, style: "italic", weight: "regular"), ..arguments, numbering: none, level: 3, outlined: true), spacing: 1.666em)
    }
  }
  
  body
}
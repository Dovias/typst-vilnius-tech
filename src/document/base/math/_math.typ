#let _math(body) = {
  set math.equation(numbering: "(1)", block: true)
  show math.equation: it => {
    set text(1em)
    set block(spacing: 1em)

    it
  }

  show terms: it => {
    set block(spacing: 0em)
  }

  body
}
#let _math(body) = {
  set math.equation(numbering: "(1)", supplement: none, block: true)
  show math.equation: it => {
    set text(1em)
    set block(spacing: 1em)

    it
  }

  body
}
#let _math(body) = {
  set math.equation(numbering: (..rest) => text(numbering("(1)", ..rest), font: "Times New Roman"), supplement: none, block: true)
  show math.equation: it => {
    set text(1em, font: "Cambria Math")
    set block(spacing: 1em)

    it
  }

  body
}
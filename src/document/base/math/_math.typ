#import "../../configuration/index.typ": font

#let _math(body) = {
  set math.equation(numbering: (..rest) => text(numbering("(1)", ..rest), font: font.text), supplement: none, block: true)
  show math.equation: it => {
    set text(1em, font: font.math)
    set block(spacing: 1em)

    it
  }

  body
}
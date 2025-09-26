#let math(body) = {
  set std.math.equation(numbering: (..rest) => text(numbering("(1)", ..rest), font: "STIX Two Math"), supplement: none, block: true)
  show std.math.equation: set block(spacing: 1em)

  body
}
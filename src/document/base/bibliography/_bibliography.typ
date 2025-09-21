#let _bibliography(body) = {
  set bibliography(title: none, style: "apa")
  show bibliography: set par(spacing: 1.5em, justify: true)
  show bibliography: it => {
    show "-": sym.hyph
    it
  }
  body
}
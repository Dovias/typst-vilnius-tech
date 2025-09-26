#let bibliography(body) = {
  set std.bibliography(title: none, style: "apa")
  show std.bibliography: set par(spacing: 1.5em, justify: true)
  show std.bibliography: it => {
    show "-": sym.hyph
    it
  }
  body
}
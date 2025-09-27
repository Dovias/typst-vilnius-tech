#let bibliography(body) = {
  set std.bibliography(title: "Literatūros sąrašas", style: "apa")
  show std.bibliography: set par(spacing: 1.5em, justify: true)
  show std.bibliography: bibliography => [
    #show "-": sym.hyph
    #pagebreak() #bibliography #pagebreak()
  ]
  
  body
}
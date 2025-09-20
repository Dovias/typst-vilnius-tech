#let _figure(body) = {
  let format(..rest) = numbering("1", ..rest)

  set figure(numbering: (..rest) => format(..rest) + " pav.", supplement: none)
  set figure.caption(separator: " ")

  show figure: set text(size: 0.916em)
  show figure.where(kind: table): set figure(numbering: (..rest) => format(..rest) + " lentelė.")
  show figure.where(kind: table): set figure.caption(position: top)
  show figure.where(kind: table): set align(left)
  show figure.where(kind: table): set par(first-line-indent: (amount: 0.15em, all: true))
  
  show figure.caption: it => [#text(context it.counter.display(), weight: "bold")#it.supplement#it.separator#it.body]


  body
}
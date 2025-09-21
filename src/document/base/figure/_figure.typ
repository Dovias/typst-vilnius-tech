#let _figure(body) = {
  let format(..rest) = numbering("1", ..rest)

  set figure(caption: "Pavadinimas", numbering: (..rest) => [#format(..rest)  pav.], supplement: none)
  set figure.caption(separator: " ")

  show figure: set text(size: 0.916em)
  show figure: set par(first-line-indent: 0em, spacing: 0.5em)

  show figure.where(kind: table): set figure(numbering: (..rest) => format(..rest) + " lentelė.")
  show figure.where(kind: table): set figure.caption(position: top)
  show figure.where(kind: table): set align(left)
  show figure.where(kind: table): set par(first-line-indent: (amount: 0.15em, all: true))
  show figure.caption: caption => [
    #text(context caption.counter.display(), weight: "bold")#caption.separator#caption.body
  ]
  show figure: it => block(spacing: 2em, width: 100%)[
    #it

    #set align(left)
    Šaltinis: Sudaryta autoriaus
  ]


  body
}
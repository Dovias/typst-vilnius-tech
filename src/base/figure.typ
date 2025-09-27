#let attachment = "attachment"

#let figure(body) = {
  let format(..rest) = numbering("1", ..rest)

  set std.figure(caption: "Pavadinimas", supplement: "sudaryta autoriaus")
  set std.figure.caption(separator: " ")

  show std.figure: set text(size: 0.916em)
  show std.figure: set par(first-line-indent: 0em, spacing: 0.5em)

  show std.figure.where(kind: image): set std.figure(numbering: (..rest) => [#format(..rest) pav.])
  show std.figure.where(kind: table): set std.figure(numbering: (..rest) => format(..rest) + " lentelė.")
  show std.figure.where(kind: table): set std.figure.caption(position: top)
  show std.figure.where(kind: table): set align(left)
  show std.figure.where(kind: table): set par(first-line-indent: (amount: 0.15em, all: true))

  show std.figure.where(kind: attachment): set std.figure(numbering: (..rest) => [#format(..rest) priedas.])
  show std.figure.where(kind: attachment): set std.figure.caption(position: top)
  show std.figure.where(kind: attachment): set align(left)


  show std.figure.caption: caption => block(width: 100%)[
    #text(context caption.counter.display(), weight: "bold")#caption.separator#caption.body
  ]

  show std.figure: it => block(width: 100%, spacing: 2em)[#{
    [#it]

    let supplement = it.supplement
    set align(left)
    set cite(form: "prose")

    text(size: 0.832em)[Šaltinis: #it.supplement]
  }]

  body
}
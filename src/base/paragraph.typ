#let paragraph(body) = {
  set par(
    leading: 1.0526em,
    spacing: 1.0526em,
    first-line-indent: (
      amount: 3em,
      all: true
    ),
    justify: true
  )

  show par: it => [#it #metadata(it) <paragraph>]
  
  body
}
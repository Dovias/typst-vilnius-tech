#let _figure(body, source: "Sudaryta autoriaus", ..rest) = {
  let arguments = rest.named()

  block(
    {
      figure(
      body,
      ..rest
      )
      set par(first-line-indent: 0em)
      text("Šaltinis: " + source, size: 0.916em)
    },
    spacing: 2em
  )

}
x
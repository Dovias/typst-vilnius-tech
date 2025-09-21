#let _figure(body, reference: "Sudaryta autoriaus", ..rest) = {
  let arguments = rest.named()

  block(
    {
      figure(body, ..rest)
      set par(first-line-indent: 0em)
      text("Šaltinis: " + reference, size: 0.916em)
    },
    spacing: 2em,
    width: 100%
  )

}
x
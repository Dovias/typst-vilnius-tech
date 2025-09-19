#let _image(caption: "Pavadinimas", reference: "Sudaryta autoriaus", ..rest) = {
  block(
    {
      figure(image(..rest), caption: caption)
      set par(first-line-indent: 0em)
      text("Šaltinis: " + reference, size: 0.833em)
    },
    spacing: 2em,
    width: 100%
  )
}
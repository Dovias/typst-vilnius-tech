#let _table(caption: "Pavadinimas", reference: "Sudaryta autoriaus", ..rest) = {
  block(
    {
      figure(table(..rest), caption: caption)
      set par(first-line-indent: 0em)
      text("Šaltinis: " + reference, size: 0.833em)
    },
    spacing: 2em
  )

}
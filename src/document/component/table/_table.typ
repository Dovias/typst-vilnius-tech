#let _table(caption: none, reference: "Sudaryta autoriaus", ..rest) = {
  block(
    {
      let arguments = ()
      if (caption != none) {
        arguments.push(caption)
      }

      figure(table(..rest), ..arguments)
      set par(first-line-indent: 0em)
      text("Šaltinis: " + reference, size: 0.833em)
    },
    spacing: 2em
  )

}
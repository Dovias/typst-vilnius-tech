#let document(content) = {
  set text(
    font: "Times New Roman",
    size: 12pt
  )

  set par(leading: 0.75em)

  set page(
    margin: (
      top: 2cm,
      right: 1cm,
      bottom: 2cm,
      left: 3cm
    )
  )

  content
}
#let body(content) = {
  set text(
    font: "Times New Roman",
    size: 12pt,
    lang: "lt",
    region: "LT"
  )

  set par(leading: 1em, spacing: 1em)

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
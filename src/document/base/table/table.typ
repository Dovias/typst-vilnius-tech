#let _table(body) = {
  set table(
    align: horizon + left,
    inset: (
      x: 0.6em,
      y: 0.55em
    ),
    stroke: 0.25pt)

  show table: set text(size: 0.833em)
  show table: set par(leading: 0.5em, spacing: 0.5em, justify: true)
  show table.header: set table.cell(align: horizon + center)

  body
}
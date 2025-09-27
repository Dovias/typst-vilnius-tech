#let table(body) = {
  set std.table(
    align: horizon + left,
    inset: (
      x: 0.6em,
      y: 0.55em
    ),
    stroke: 0.25pt)

  show std.table: set text(size: 0.833em)
  show std.table: set par(leading: 0.5em, spacing: 0.5em, justify: true)
  show std.table.header: set std.table.cell(align: horizon + center)

  body
}
#let _table(body) = {
  set table(
    align: horizon + center,
    inset: (
      x: 0.6em,
      y: 0.55em
    ),
    stroke: 0.25pt)

  show table: it => {
    set text(size: 0.833em)
    set par(leading: 0.5em, spacing: 0.5em, justify: true)

    it
  }

  body
}
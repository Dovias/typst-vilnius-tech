#let outline(body) = {
  set std.outline(title: none, indent: (level) => level * 1.2em)
  set std.outline.entry(fill: repeat(".", gap: 0em))

  show std.outline.entry: set block(spacing: 0.5em)
  show std.outline.entry.where(level: 1): set block(spacing: 1em)

  show std.outline.entry.where(level: 1): it => if (it.element.func() == heading) {
    link(it.element.location(), it.indented(it.prefix(), upper(it.inner())))
  } else {
    it
  }

  show std.outline.entry.where(level: 3): set text(style: "italic")

  body
}
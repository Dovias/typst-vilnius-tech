#let page(
  university,
  faculty,
  department,
  author,
  name,
  type,
  study,
  specialization,
  field,
  dateline
) = {
  set align(center)

  image("asset/branding.svg", height: 1.4cm)
  block(text(upper(university), size: 14pt), width: 100%, height: 1em)
  par(text(upper(faculty)))
  par(text(upper(department)))
  v(0.625fr)
  par(text(author))
  par("")
  par(text(upper(name.lithuanian), size: 14pt, weight: "bold"))
  par(text(upper(name.english), size: 14pt, weight: "bold"))
  for _ in range(1, 2) {
    par("", leading: 0em)
  }
  par(text(type, size: 14pt))
  par("")
  par(text(study))
  par(text(specialization))
  par(text(field))
  v(1fr)
  par(text(dateline))


  pagebreak()
}
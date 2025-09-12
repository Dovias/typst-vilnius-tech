#let page(
  university,
  faculty,
  department
) = {
  set align(center)

  image("asset/branding.svg", height: 1.4cm)
  par(text(upper(university), size: 14pt))
  par(text(upper(faculty)))
  par(text(upper(department)))
  par(text(upper(author)))

  pagebreak()
}
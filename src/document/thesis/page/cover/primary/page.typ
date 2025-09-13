#import "../../../../../utility/index.typ" as utility

#let page(
  university,
  faculty,
  department,
  student,
  name,
  type,
  study,
  specialization,
  field,
  dateline
) = {
  set align(center)

  image("asset/branding.svg", height: 1.4cm)
  par("")

  layout(size => {
    let (width, height) = size

    utility.text.clip(
      utility.text.sanitize(university),
      (content) => par(text(upper(content), size: 14pt), leading: 1.166em, spacing: 1.166em),
      width
    )

    utility.text.clip(
      utility.text.sanitize(faculty),
      (content) => par(text(upper(content))),
      width
    )

    utility.text.clip(
      utility.text.sanitize(department),
      (content) => par(text(upper(content))),
      width
    )

    v(0.625fr)
    utility.text.clip(
      utility.text.sanitize(student),
      (content) => par(text(content)),
      width
    )
    par("")

    utility.text.clip(
      utility.text.sanitize(name.lithuanian),
      (content) => par(text(upper(content), size: 14pt, weight: "bold")),
      width
    )

    utility.text.clip(
      utility.text.sanitize(name.english),
      (content) => par(text(upper(content), size: 14pt, weight: "bold")),
      width
    )

    par("", leading: 0em)
    par("", leading: 0em)

    utility.text.clip(
      utility.text.sanitize(type),
      (content) => par(text(content, size: 14pt)),
      width
    )

    par("")

    utility.text.clip(
      utility.text.sanitize(study),
      (content) => par(text(content)),
      width
    )
    utility.text.clip(
      utility.text.sanitize(specialization),
      (content) => par(text(content)),
      width
    )
    utility.text.clip(
      utility.text.sanitize(field),
      (content) => par(text(content)),
      width
    )

    v(1fr)

    utility.text.clip(
      utility.text.sanitize(dateline),
      (content) => par(text(content)),
      width
    )
  })
  
  pagebreak()
}